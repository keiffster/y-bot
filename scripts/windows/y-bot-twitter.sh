@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.polling.twitter.client --config  ..\..\config\windows\config.twitter.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


