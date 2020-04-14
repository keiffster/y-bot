#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.polling.xmpp.client --config  ../../config/xnix/config.xmpp.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

