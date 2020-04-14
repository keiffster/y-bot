@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.events.tcpsocket.client --config  ..\..\config\windows\config.socket.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


