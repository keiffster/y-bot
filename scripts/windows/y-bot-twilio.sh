@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.restful.flask.twilio.client --config  ..\..\config\windows\config.twilio.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end


