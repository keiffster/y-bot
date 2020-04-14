@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.events.tcpsocket.tester 127.0.0.1 9999 Hello
goto end

:error
echo PYTHONPATH not set!

:end

