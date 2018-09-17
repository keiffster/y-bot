@echo off

CLS

mkdir .\temp

python -m programy.clients.restful.flask.kik.client --config .\config.windows.yaml --cformat yaml --logging .\logging.windows.yaml
