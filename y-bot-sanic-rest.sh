#! /bin/sh

clear

echo WARNING - Have you installed Sanic before running this [pip install sanic] - WARNING

export PYTHONPATH=../../src:../../libs/MetOffer-1.3.2:.

python3 ../../src/programy/clients/sanicrest.py --config ./config.yaml --cformat yaml --logging ./logging.yaml

