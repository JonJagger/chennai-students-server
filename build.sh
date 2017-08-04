#!/bin/bash

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
docker-compose --file ${MY_DIR}/docker-compose.yml build

#docker build --tag cyberdojofoundation/chennai_students:1.0  .
#docker build --no-cache --tag cyberdojofoundation/chennai_students:1.0  .
