@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.polling.slack.client --config  ..\..\config\windows\config.slack.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end

