#!/bin/bash

NUMBER_OF_CORES=$(nproc)

# Move into the host-mounted build folder
cd /srv

# Get the source
apt-get source kicad

# Do multithreaded building (do it nicely)
cd kicad-4.0.0/
nice -n 19 debuild -uc -us -j$NUMBER_OF_CORES

# Set permissions
chmod -R 666 /srv/
