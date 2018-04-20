@echo off

CLS

mkdir .\temp

python -m programy.clients.polling.xmpp.client.py --config .\config.windows.yaml --cformat yaml --logging .\logging.windows.yaml

