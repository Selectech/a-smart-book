@echo off

for /r %%a in (*.sproj) do (echo. & echo %%a & ..\..\smsc.exe "%%a" & if errorlevel 1 goto stop)

echo.
echo OK
goto exit

:stop
echo.
echo *** ERROR ***
pause

:exit
