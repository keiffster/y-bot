#! /bin/sh

clear

python3 -m programy.clients.events.tcpsocket.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

