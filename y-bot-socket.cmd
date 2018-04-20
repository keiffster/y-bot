@echo off

CLS

mkdir .\temp

python -m programy.clients.events.tcpsocket.client --config .\config.windows.yaml --cformat yaml --logging .\logging.windows.yaml
