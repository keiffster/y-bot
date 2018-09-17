#! /bin/sh

clear

python3 -m programy.clients.restful.flask.facebook.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

