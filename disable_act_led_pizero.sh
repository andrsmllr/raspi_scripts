#!/bin/sh
# Deactivate the activity(ACT) LED of Raspberry Pi Zero by writing to the SD card.
# Must be executed in the /boot partition of the Raspbian SD card.
# Ref.:
# https://www.jeffgeerling.com/blogs/jeff-geerling/raspberry-pi-zero-conserve-energy

if test -z ${CONFIG}; then
  CONFIG=./config.txt
fi
echo '\n' >> ${CONFIG}
echo '# Disable ACT LED.' >> ${CONFIG}
echo 'dtparam=act_led_trigger=none' >> ${CONFIG}
echo 'dtparam=act_led_activelow=on' >> ${CONFIG}
