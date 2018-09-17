#! /bin/sh

clear

if [[ -z "${PYTHONPATH}" ]]; then
  echod "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.events.console.client --config ../../configconfig.yaml --cformat yaml --logging ../../config/logging.yaml

