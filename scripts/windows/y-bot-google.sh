@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.restful.flask.google.client --config ..\..\config\windows\config.google.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


