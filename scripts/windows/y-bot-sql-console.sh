@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.events.console.client --config ..\..\config\windows\config.console.sql.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


