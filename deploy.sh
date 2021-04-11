#!/bin/sh
echo ${DIGITAL_OCEAN_DROPLET_IP}
ssh -o StrictHostKeyChecking=no travis@${DIGITAL_OCEAN_DROPLET_IP} << ENDSSH
  touch droplettest
  echo "Test sucessful" > droplettest
  echo $1 >> droplettest
  echo $1 | docker login --username mikeaws1 --password-stdin
  docker stop 8441a1323765
  docker run -d -p 3000:3000 mikeaws1/docker_tutorial
ENDSSH