@echo off
IF NOT EXIST "%~1\include\apr.h" copy /y "%~1\include\apr.hw" "%~1\include\apr.h"
IF NOT "%ERRORLEVEL%" == "0" exit /b 1
exit /b 0
