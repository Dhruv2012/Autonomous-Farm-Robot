/* Taken from utexas-art-ros-pkg:art_vehicle/applanix */

/*
 * Conversions between coordinate systems.
 *
 * Includes LatLong<->UTM.
 */

#ifndef _UTM_H
#define _UTM_H

/**  @file

     @brief Universal Transverse Mercator transforms.

     Functions to convert (spherical) latitude and longitude to and
     from (Euclidean) UTM coordinates.

     @author Chuck Gantz- chuck.gantz@globalstar.com

 */

#include <cmath>
#include <cstdio>
#include <cstdlib>

namespace gps_common
{

const double RADIANS_PER_DEGREE = M_PI/180.0;
const double DEGREES_PER_RADIAN = 180.0/M_PI;

// WGS84 Parameters
const double WGS84_A = 6378137.0;		// major axis
const double WGS84_B = 6356752.31424518;	// minor axis
const double WGS84_F = 0.0033528107;		// ellipsoid flattening
const double WGS84_E = 0.0818191908;		// first eccentricity
const double WGS84_EP = 0.0820944379;		// second eccentricity

// UTM Parameters
const double UTM_K0 = 0.9996;			// scale factor
const double UTM_FE = 500000.0;		// false easting
const double UTM_FN_N = 0.0;			// false northing on north hemisphere
const double UTM_FN_S = 10000000.0;		// false northing on south hemisphere
const double UTM_E2 = (WGS84_E*WGS84_E);	// e^2
const double UTM_E4 = (UTM_E2*UTM_E2);		// e^4
const double UTM_E6 = (UTM_E4*UTM_E2);		// e^6
const double UTM_EP2 = (UTM_E2/(1-UTM_E2));	// e'^2

/**
 * Utility function to convert geodetic to UTM position
 *
 * Units in are floating point degrees (sign for east/west)
 *
 * Units out are meters
 */
static inline void UTM(double lat, double lon, double *x, double *y)
{
  // constants
  const static double m0 = (1 - UTM_E2/4 - 3*UTM_E4/64 - 5*UTM_E6/256);
  const static double m1 = -(3*UTM_E2/8 + 3*UTM_E4/32 + 45*UTM_E6/1024);
  const static double m2 = (15*UTM_E4/256 + 45*UTM_E6/1024);
  const static double m3 = -(35*UTM_E6/3072);

  // compute the central meridian
  int cm = ((lon >= 0.0)
	    ? ((int)lon - ((int)lon)%6 + 3)
	    : ((int)lon - ((int)lon)%6 - 3));

  // convert degrees into radians
  double rlat = lat * RADIANS_PER_DEGREE;
  double rlon = lon * RADIANS_PER_DEGREE;
  double rlon0 = cm * RADIANS_PER_DEGREE;

  // compute trigonometric functions
  double slat = sin(rlat);
  double clat = cos(rlat);
  double tlat = tan(rlat);

  // decide the false northing at origin
  double fn = (lat > 0) ? UTM_FN_N : UTM_FN_S;

  double T = tlat * tlat;
  double C = UTM_EP2 * clat * clat;
  double A = (rlon - rlon0) * clat;
  double M = WGS84_A * (m0*rlat + m1*sin(2*rlat)
			+ m2*sin(4*rlat) + m3*sin(6*rlat));
  double V = WGS84_A / sqrt(1 - UTM_E2*slat*slat);

  // compute the easting-northing coordinates
  *x = UTM_FE + UTM_K0 * V * (A + (1-T+C)*pow(A,3)/6
			      + (5-18*T+T*T+72*C-58*UTM_EP2)*pow(A,5)/120);
  *y = fn + UTM_K0 * (M + V * tlat * (A*A/2
				      + (5-T+9*C+4*C*C)*pow(A,4)/24
				      + ((61-58*T+T*T+600*C-330*UTM_EP2)
					 * pow(A,6)/720)));

  return;
}


/**
 * Determine the correct UTM letter designator for the
 * given latitude
 *
 * @returns 'Z' if latitude is outside the UTM limits of 84N to 80S
 *
 * Written by Chuck Gantz- chuck.gantz@globalstar.com
 */
static inline char UTMLetterDesignator(double Lat)
{
	char LetterDesignator;

	if     ((84 >= Lat) && (Lat >= 72))  LetterDesignator = 'X';
	else if ((72 > Lat) && (Lat >= 64))  LetterDesignator = 'W';
	else if ((64 > Lat) && (Lat >= 56))  LetterDesignator = 'V';
	else if ((56 > Lat) && (Lat >= 48))  LetterDesignator = 'U';
	else if ((48 > Lat) && (Lat >= 40))  LetterDesignator = 'T';
	else if ((40 > Lat) && (Lat >= 32))  LetterDesignator = 'S';
	else if ((32 > Lat) && (Lat >= 24))  LetterDesignator = 'R';
	else if ((24 > Lat) && (Lat >= 16))  LetterDesignator = 'Q';
	else if ((16 > Lat) && (Lat >= 8))   LetterDesignator = 'P';
	else if (( 8 > Lat) && (Lat >= 0))   LetterDesignator = 'N';
	else if (( 0 > Lat) && (Lat >= -8))  LetterDesignator = 'M';
	else if ((-8 > Lat) && (Lat >= -16)) LetterDesignator = 'L';
	else if((-16 > Lat) && (Lat >= -24)) LetterDesignator = 'K';
	else if((-24 > Lat) && (Lat >= -32)) LetterDesignator = 'J';
	else if((-32 > Lat) && (Lat >= -40)) LetterDesignator = 'H';
	else if((-40 > Lat) && (Lat >= -48)) LetterDesignator = 'G';
	else if((-48 > Lat) && (Lat >= -56)) LetterDesignator = 'F';
	else if((-56 > Lat) && (Lat >= -64)) LetterDesignator = 'E';
	else if((-64 > Lat) && (Lat >= -72)) LetterDesignator = 'D';
	else if((-72 > Lat) && (Lat >= -80)) LetterDesignator = 'C';
        // 'Z' is an error flag, the Latitude is outside the UTM limits
	else LetterDesignator = 'Z';
	return LetterDesignator;
}

/**
 * Convert lat/long to UTM coords.  Equations from USGS Bulletin 1532
 *
 * East Longitudes are positive, West longitudes are negative.
 * North latitudes are positive, South latitudes are negative
 * Lat and Long are in fractional degrees
 *
 * Written by Chuck Gantz- chuck.gantz@globalstar.com
 */
static inline void LLtoUTM(const double Lat, const double Long,
                           double &UTMNorthing, double &UTMEasting,
                           char* UTMZone)
{
	double a = WGS84_A;
	double eccSquared = UTM_E2;
	double k0 = UTM_K0;

	double LongOrigin;
	double eccPrimeSquared;
	double N, T, C, A, M;

        //Make sure the longitude is between -180.00 .. 179.9
	double LongTemp = (Long+180)-int((Long+180)/360)*360-180;

	double LatRad = Lat*RADIANS_PER_DEGREE;
	double LongRad = LongTemp*RADIANS_PER_DEGREE;
	double LongOriginRad;
	int    ZoneNumber;

	ZoneNumber = int((LongTemp + 180)/6) + 1;

	if( Lat >= 56.0 && Lat < 64.0 && LongTemp >= 3.0 && LongTemp < 12.0 )
		ZoneNumber = 32;

        // Special zones for Svalbard
	if( Lat >= 72.0 && Lat < 84.0 )
	{
	  if(      LongTemp >= 0.0  && LongTemp <  9.0 ) ZoneNumber = 31;
	  else if( LongTemp >= 9.0  && LongTemp < 21.0 ) ZoneNumber = 33;
	  else if( LongTemp >= 21.0 && LongTemp < 33.0 ) ZoneNumber = 35;
	  else if( LongTemp >= 33.0 && LongTemp < 42.0 ) ZoneNumber = 37;
	 }
        // +3 puts origin in middle of zone
	LongOrigin = (ZoneNumber - 1)*6 - 180 + 3;
	LongOriginRad = LongOrigin * RADIANS_PER_DEGREE;

	//compute the UTM Zone from the latitude and longitude
	snprintf(UTMZone, 4, "%d%c", ZoneNumber, UTMLetterDesignator(Lat));

	eccPrimeSquared = (eccSquared)/(1-eccSquared);

	N = a/sqrt(1-eccSquared*sin(LatRad)*sin(LatRad));
	T = tan(LatRad)*tan(LatRad);
	C = eccPrimeSquared*cos(LatRad)*cos(LatRad);
	A = cos(LatRad)*(LongRad-LongOriginRad);

	M = a*((1	- eccSquared/4		- 3*eccSquared*eccSquared/64	- 5*eccSquared*eccSquared*eccSquared/256)*LatRad
				- (3*eccSquared/8	+ 3*eccSquared*eccSquared/32	+ 45*eccSquared*eccSquared*eccSquared/1024)*sin(2*LatRad)
									+ (15*eccSquared*eccSquared/256 + 45*eccSquared*eccSquared*eccSquared/1024)*sin(4*LatRad)
									- (35*eccSquared*eccSquared*eccSquared/3072)*sin(6*LatRad));

	UTMEasting = (double)(k0*N*(A+(1-T+C)*A*A*A/6
					+ (5-18*T+T*T+72*C-58*eccPrimeSquared)*A*A*A*A*A/120)
					+ 500000.0);

	UTMNorthing = (double)(k0*(M+N*tan(LatRad)*(A*A/2+(5-T+9*C+4*C*C)*A*A*A*A/24
				 + (61-58*T+T*T+600*C-330*eccPrimeSquared)*A*A*A*A*A*A/720)));
	if(Lat < 0)
		UTMNorthing += 10000000.0; //10000000 meter offset for southern hemisphere
}

static inline void LLtoUTM(const double Lat, const double Long,
                           double &UTMNorthing, double &UTMEasting,
                           std::string &UTMZone) {
  char zone_buf[] = {0, 0, 0, 0};

  LLtoUTM(Lat, Long, UTMNorthing, UTMEasting, zone_buf);

  UTMZone = zone_buf;
}


/**
 * Converts UTM coords to lat/long.  Equations from USGS Bulletin 1532
 *
 * East Longitudes are positive, West longitudes are negative.
 * North latitudes are positive, South latitudes are negative
 * Lat and Long are in fractional degrees.
 *
 * Written by Chuck Gantz- chuck.gantz@globalstar.com
 */
static inline void UTMtoLL(const double UTMNorthing, const double UTMEasting,
                           const char* UTMZone, double& Lat,  double& Long )
{
	double k0 = UTM_K0;
	double a = WGS84_A;
	double eccSquared = UTM_E2;
	double eccPrimeSquared;
	double e1 = (1-sqrt(1-eccSquared))/(1+sqrt(1-eccSquared));
	double N1, T1, C1, R1, D, M;
	double LongOrigin;
	double mu, phi1Rad;
	double x, y;
	int ZoneNumber;
	char* ZoneLetter;

	x = UTMEasting - 500000.0; //remove 500,000 meter offset for longitude
	y = UTMNorthing;

	ZoneNumber = strtoul(UTMZone, &ZoneLetter, 10);
	if((*ZoneLetter - 'N') < 0)
	{
		y -= 10000000.0;//remove 10,000,000 meter offset used for southern hemisphere
	}

	LongOrigin = (ZoneNumber - 1)*6 - 180 + 3;  //+3 puts origin in middle of zone

	eccPrimeSquared = (eccSquared)/(1-eccSquared);

	M = y / k0;
	mu = M/(a*(1-eccSquared/4-3*eccSquared*eccSquared/64-5*eccSquared*eccSquared*eccSquared/256));

	phi1Rad = mu	+ (3*e1/2-27*e1*e1*e1/32)*sin(2*mu)
				+ (21*e1*e1/16-55*e1*e1*e1*e1/32)*sin(4*mu)
				+(151*e1*e1*e1/96)*sin(6*mu);

	N1 = a/sqrt(1-eccSquared*sin(phi1Rad)*sin(phi1Rad));
	T1 = tan(phi1Rad)*tan(phi1Rad);
	C1 = eccPrimeSquared*cos(phi1Rad)*cos(phi1Rad);
	R1 = a*(1-eccSquared)/pow(1-eccSquared*sin(phi1Rad)*sin(phi1Rad), 1.5);
	D = x/(N1*k0);

	Lat = phi1Rad - (N1*tan(phi1Rad)/R1)*(D*D/2-(5+3*T1+10*C1-4*C1*C1-9*eccPrimeSquared)*D*D*D*D/24
					+(61+90*T1+298*C1+45*T1*T1-252*eccPrimeSquared-3*C1*C1)*D*D*D*D*D*D/720);
	Lat = Lat * DEGREES_PER_RADIAN;

	Long = (D-(1+2*T1+C1)*D*D*D/6+(5-2*C1+28*T1-3*C1*C1+8*eccPrimeSquared+24*T1*T1)
					*D*D*D*D*D/120)/cos(phi1Rad);
	Long = LongOrigin + Long * DEGREES_PER_RADIAN;

}

static inline void UTMtoLL(const double UTMNorthing, const double UTMEasting,
    std::string UTMZone, double& Lat, double& Long) {
  UTMtoLL(UTMNorthing, UTMEasting, UTMZone.c_str(), Lat, Long);
}

} // end namespace UTM

#endif // _UTM_H
