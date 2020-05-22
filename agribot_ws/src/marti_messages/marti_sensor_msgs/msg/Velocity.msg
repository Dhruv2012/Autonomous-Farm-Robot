# Single axis linear velocity reading.

Header  header           # The time and location of the measurement.
                         # The x-axis in the sensor space is interpreted as the
                         # axis of linear motion.
                         
float64 velocity         # Velocity measurement in meters / sec
float64 variance         # 0 is interpreted as variance unknown
