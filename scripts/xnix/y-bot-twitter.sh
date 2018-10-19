#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.polling.twitter.client --config  ../../config/xnix/config.twitter.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

