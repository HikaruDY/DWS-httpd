@echo off
IF NOT EXIST "%~1\include\ap_config_layout.h" copy /y "%~dp0\ap_config_layout.h" "%~1\include\ap_config_layout.h"

IF NOT "%ERRORLEVEL%" == "0" exit /b 1
exit /b 0
