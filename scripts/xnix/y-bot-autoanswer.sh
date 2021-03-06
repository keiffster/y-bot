#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.events.console.autoanswer --config ../../config/xnix/config.console.yaml --cformat yaml --logging ../../config/xnix/logging.yaml --qandas ./qandas.csv

