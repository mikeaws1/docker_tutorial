#!/bin/sh
echo ${DIGITAL_OCEAN_DROPLET_IP}
ssh -o StrictHostKeyChecking=no travis@${DIGITAL_OCEAN_DROPLET_IP} << ENDSSH
  touch droplettest
  echo "Test sucessful" > droplettest
ENDSSH