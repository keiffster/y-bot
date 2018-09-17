#! /bin/sh

clear

python3 -m programy.clients.restful.flask.viber.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

