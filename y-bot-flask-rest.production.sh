#! /bin/sh

clear

python3 -m programy.clients.restful.flask.client --config ./config.production.yaml --cformat yaml --logging ./logging.production.yaml

