@echo off

set ARCH=_x64

rd /s /q "%~dp0\ServerRoot%ARCH%"
md "%~dp0\ServerRoot%ARCH%"
md "%~dp0\ServerRoot%ARCH%\bin"
md "%~dp0\ServerRoot%ARCH%\conf"
md "%~dp0\ServerRoot%ARCH%\modules"
md "%~dp0\ServerRoot%ARCH%\logs"
copy "%~dp0\Release%ARCH%\*.exe" "%~dp0\ServerRoot%ARCH%\bin"
copy "%~dp0\Release%ARCH%\*.dll" "%~dp0\ServerRoot%ARCH%\bin"
copy "%~dp0\Release%ARCH%\*.so" "%~dp0\ServerRoot%ARCH%\modules"

pushd "%~dp0\..\srclib\openssl*\"
copy "libeay32.dll" "%~dp0\ServerRoot%ARCH%\bin"
copy "ssleay32.dll" "%~dp0\ServerRoot%ARCH%\bin"
popd
