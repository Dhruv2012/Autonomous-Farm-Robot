# Message for containing digital data obtained by a real-time DAQ.

Header header
# header contains the timestamp of when this data was obtained from
# the device.

float64 sample_frequency
# The sampling frequency [Hz] of the DAQ.

uint64 latest_sample_time
# The most recent time (in sampling clock ticks) that the port was
# sampled.

uint16[] sample_states
uint32[] sample_times
# DAQ data filtered to only contain changes in states.  sample_times[]
# is a list of clock ticks encoded as a (negative) offset from
# latest_sample_time (ex: clock_time[i] = latest_sample_time -
# sample_times[i]).  This encoding reduces the times from uint64 to
# uint32.  sample_states[] are the port states at the corresponding
# times.
