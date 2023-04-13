@echo off

pushd "%~dp0"

IF EXIST "Release_x86" CALL :COLLECT x86
IF EXIST "Release_x64" CALL :COLLECT x64
IF EXIST "Release_ia64" CALL :COLLECT ia64
IF EXIST "Release_a32" CALL :COLLECT a32
IF EXIST "Release_a64" CALL :COLLECT a64
IF EXIST "Release_a64ex" CALL :COLLECT a64ec


GOTO :EOF

:COLLECT
rd /s /q "%~dp0\ServerRoot_%1"
md "%~dp0\ServerRoot_%1"
md "%~dp0\ServerRoot_%1\bin"
md "%~dp0\ServerRoot_%1\conf"
md "%~dp0\ServerRoot_%1\modules"
md "%~dp0\ServerRoot_%1\logs"
copy "%~dp0\Release_%1\*.exe" "%~dp0\ServerRoot_%1\bin"
copy "%~dp0\Release_%1\*.dll" "%~dp0\ServerRoot_%1\bin"
copy "%~dp0\Release_%1\*.so" "%~dp0\ServerRoot_%1\modules"

pushd "%~dp0\..\srclib\openssl*\"
cd "BuildVS\Release_%1"
copy "libcrypto-*.dll" "%~dp0\ServerRoot_%1\bin"
copy "libssl-*.dll" "%~dp0\ServerRoot_%1\bin"
popd
GOTO :EOF

:EOF
popd
