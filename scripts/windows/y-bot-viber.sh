#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.restful.flask.viber.client --config  ../../config/xnix/config.viber.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

