@echo off

rd /s /q "%~dp0\ServerRoot"
md "%~dp0\ServerRoot"
md "%~dp0\ServerRoot\bin"
md "%~dp0\ServerRoot\conf"
md "%~dp0\ServerRoot\modules"
md "%~dp0\ServerRoot\logs"
copy "%~dp0\Release\*.exe" "%~dp0\ServerRoot\bin"
copy "%~dp0\Release\*.dll" "%~dp0\ServerRoot\bin"
copy "%~dp0\Release\*.so" "%~dp0\ServerRoot\modules"

pushd "%~dp0\..\srclib\openssl*\"
copy "libeay32.dll" "%~dp0\ServerRoot\bin"
copy "ssleay32.dll" "%~dp0\ServerRoot\bin"
popd
