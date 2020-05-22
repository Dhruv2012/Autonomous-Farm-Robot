# This message is intended for use as a light-weight machine status indicator for robot consumption
# whereas Diagnostics are for human consumption

int8 OK=0    # Initialized with no issues
int8 WARN=1  # Component is operating but the data may be inaccurate or there may be minor problems
int8 ERROR=2 # Component has encountered a serious problem and cannot or will not operate
int8 STALE=3 # Uninitialized or cannot determine status

Header header

int8   status
string message
