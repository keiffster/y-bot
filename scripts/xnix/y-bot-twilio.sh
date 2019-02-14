#! /bin/sh

clear


python3 -m programy.clients.restful.flask.twilio.client --config  ../../config/xnix/config.twilio.yaml --cformat yaml --logging ../../config/xnix/logging.yaml

