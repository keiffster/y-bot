#! /bin/sh

clear

python3 -m programy.clients.polling.slack.client --config ./config.yaml --cformat yaml --logging ./logging.yaml

