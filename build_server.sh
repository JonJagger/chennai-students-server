#!/bin/bash

curl -sSL https://get.docker.com/ | sh
docker pull cyberdojo/chennai-students-server:1.0
curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"
chmod +x /usr/local/bin/docker-compose

echo
echo "$ sudo ./up.sh"
echo