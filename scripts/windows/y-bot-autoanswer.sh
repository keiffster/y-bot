@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.events.console.autoanswer --config ..\..\config\windows\config.console.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml --qandas ./qandas.csv
goto end

:error
echo PYTHONPATH not set!

:end


