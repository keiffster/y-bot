#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.restful.flask.alexa.intents -in "servus ai" -ci -cif cancels.csv -si -sif stops.csv -hi -hif helps.csv -if intents.txt -ij intents.json -im intents.maps