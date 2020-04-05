#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python -m programy.clients.events.tcpsocket.tester 127.0.0.1 9999 Hello
