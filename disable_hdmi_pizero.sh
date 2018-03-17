#!/bin/sh
# Deactivate HDMI circuitry of Raspberry Pi Zero.
# Must be executed while logged in to Raspberry Pi Zero running Raspbian.
# Ref.:
# https://www.jeffgeerling.com/blogs/jeff-geerling/raspberry-pi-zero-conserve-energy

if test -z ${RC_LOCAL}; then
  RC_LOCAL=/etc/rc.local
fi
echo '\n' >> ${RC_LOCAL}
echo '# Disable HDMI circuitry.' >> ${RC_LOCAL}
echo '/usr/bin/tvservice -o' >> ${RC_LOCAL}
