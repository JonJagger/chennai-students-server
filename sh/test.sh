#!/bin/bash

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
source ${MY_DIR}/../.env
docker exec -it ${FACES_BOOK_CONTAINER} sh -c 'rake test'