@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.embed.basic ..\..\config\windows\config.console.yaml
goto end

:error
echo PYTHONPATH not set!

:end



