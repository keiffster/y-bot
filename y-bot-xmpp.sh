#! /bin/sh

clear

python3 -m programy.clients.polling.xmpp.client.py --config ./config.yaml --cformat yaml --logging ./logging.yaml

