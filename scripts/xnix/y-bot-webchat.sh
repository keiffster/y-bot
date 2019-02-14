#! /bin/sh

clear

python3 -m programy.clients.restful.flask.webchat.client --config ../../config/xnix/config.webchat.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

