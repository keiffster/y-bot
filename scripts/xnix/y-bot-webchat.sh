#! /bin/sh

clear

python3 -m programy.clients.restful.flask.webchat.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

