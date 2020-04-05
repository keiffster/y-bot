#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.restful.asyncio.microsoft.client --config ../../config/xnix/config.microsoft.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

