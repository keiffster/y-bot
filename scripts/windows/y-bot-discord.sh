@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.events.discord.client --config ..\..\config\windows\config.discord.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end

