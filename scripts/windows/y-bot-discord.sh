#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.events.discord.client --config ../../config/xnix/config.discord.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

