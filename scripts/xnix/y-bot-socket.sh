#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.events.tcpsocket.client --config  ../../config/xnix/config.socket.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

