#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.restful.flask.google.client --config ../../config/xnix/config.google.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

