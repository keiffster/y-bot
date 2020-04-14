@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.restful.flask.line.client --config  ..\..\config\windows\config.line.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


