@echo off

IF NOT EXIST "%~1\include\private\apu_config.h" copy /y "%~1\include\private\apu_config.hw" "%~1\include\private\apu_config.h"
IF NOT "%ERRORLEVEL%" == "0" exit /b 1

IF NOT EXIST "%~1\include\private\apu_select_dbm.h" copy /y "%~1\include\private\apu_select_dbm.hw" "%~1\include\private\apu_select_dbm.h"
IF NOT "%ERRORLEVEL%" == "0" exit /b 1

IF NOT EXIST "%~1\include\apu.h" copy /y "%~1\include\apu.hw" "%~1\include\apu.h"
IF NOT "%ERRORLEVEL%" == "0" exit /b 1

IF NOT EXIST "%~1\include\apr_ldap.h" copy /y "%~1\include\apr_ldap.hw" "%~1\include\apr_ldap.h"
IF NOT "%ERRORLEVEL%" == "0" exit /b 1

exit /b 0
