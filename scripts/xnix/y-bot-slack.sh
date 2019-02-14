#! /bin/sh

clear

python3 -m programy.clients.polling.slack.client --config  ../../config/xnix/config.slack.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

