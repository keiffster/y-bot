#! /bin/sh

clear

python3 -m programy.clients.polling.telegram.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

