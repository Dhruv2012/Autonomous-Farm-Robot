# Single axis gyro reading.

Header  header           # The time and location of the measurement.
                         # The x-axis in the sensor space is interpreted as the
                         # axis of rotation.
                         
float64 angular_rate     # Angular rate measurement in radians / sec
float64 variance         # 0 is interpreted as variance unknown