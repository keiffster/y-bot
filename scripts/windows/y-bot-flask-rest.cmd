@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.restful.flask.client --config ..\..\config\windows\config.flask.rest.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end  

