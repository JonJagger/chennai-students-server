#!/bin/bash

curl -sSL https://get.docker.com/ | sh
usermod -aG jrbjagger docker
curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"
chmod +x /usr/local/bin/docker-compose
git clone https://github.com/JonJagger/chennai-students-server.git

echo "$ cd chennai-students-server"
echo "$ sudo ./up.sh"
