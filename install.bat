@echo off
echo Installing %PROCESSOR_ARCHITECTURE%
if "%PROCESSOR_ARCHITECTURE%" == "x86" goto win32
if "%PROCESSOR_ARCHITECTURE%" == "AMD64" goto x64
echo Unsupported architecture
goto end

:win32
copy lib\win32\*.dll samples\c
copy lib\win32\*.dll samples\python
goto end

:x64:
copy lib\x64\*.dll samples\c
copy lib\x64\*.dll samples\python
goto end

:end
