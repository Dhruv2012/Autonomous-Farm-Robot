Header header
# Header timestamp is the time when all messages were acquired
# and synchronized.

uint32 ID
# CAN Message ID - This is 11 bits for standard frames or 29 bits for
# extended frames.

uint8 msg_type	  
# CAN Message Type.  This should be one of the constants defined
# below.  (Constants used to match pcan.h from Peak's driver.)
uint8 MSGTYPE_STANDARD = 0
uint8 MSGTYPE_RTR = 1
uint8 MSGTYPE_EXTENDED = 2
uint8 MSGTYPE_STATUS = 128

uint8 data_length
# Count of data bytes (0..8)

uint8[8] data
# Data bytes, up to 8
