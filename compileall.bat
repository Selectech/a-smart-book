@echo off

for /r %%a in (*.sproj) do (echo. & ..\..\smsc.exe "%%a" -stage=compile %1 -logo=no & if errorlevel 1 goto stop) 

echo.
echo OK
goto exit

:stop
echo.
echo *** ERROR ***
pause

:exit
