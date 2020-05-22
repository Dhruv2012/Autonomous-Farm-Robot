# Position along route

Header  header   # only stamp used
string  route_id # unique ID of the corresponding route
string  id       # unique ID of nearest point
float32 distance # forward along route, in meters from point identified by id
                 # field (negative values indicate the distance is backward
                 # along the route)
