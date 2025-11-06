#!/bin/bash

if [[ -z ${NO_CONSOLE_UI} ]]; then
  [[ -z ${CONSOLE_MINIO_SERVER} ]] && CONSOLE_MINIO_SERVER=http://127.0.0.1:9000
  export CONSOLE_MINIO_SERVER

  console server --host 127.0.0.1 &
fi

exec /usr/bin/docker-entrypoint.sh "$@"
