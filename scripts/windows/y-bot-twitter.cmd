@echo off

CLS

mkdir .\temp

python -m programy.clients.polling.twitter.client   --config .\config.windows.yaml --cformat yaml --logging .\logging.windows.yaml
