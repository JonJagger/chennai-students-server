#!/bin/bash
set -e

wait_till_up()
{
  local n=10
  while [ $(( n -= 1 )) -ge 0 ]
  do
    if docker ps --filter status=running --format '{{.Names}}' | grep -q ^${1}$ ; then
      return
    else
      sleep 0.5
    fi
  done
  echo "${1} not up after 5 seconds"
  docker logs "${1}"
  exit 1
}

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
source ${MY_DIR}/../.env
docker rm -f ${FACES_BOOK_CONTAINER}
docker-compose --file ${MY_DIR}/../docker-compose.yml up -d
wait_till_up ${FACES_BOOK_CONTAINER}
