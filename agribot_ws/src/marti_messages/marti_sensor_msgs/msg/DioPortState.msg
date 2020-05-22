# Message containing the value of a digital i/o port.  This is used by
# the rtd_dm7820 driver to send digital input changes and accept
# digital output commands.

Header header
# header contains the time that the event occurred.

uint64 value
# The new state of the port.  The meaning of the value depends on how
# the port is configured.
