#! /bin/sh

clear

python3 -m programy.clients.polling.xmpp.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

