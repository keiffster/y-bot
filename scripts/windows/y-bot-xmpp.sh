@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.polling.xmpp.client --config  ..\..\config\windows\config.xmpp.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


