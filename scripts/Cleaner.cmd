@echo off

del /f /s /q "%windir%\Temp"
del /f /s /q "%localappdata%\Temp"
del /f /s /q "%windir%\Prefetch"

for /f "usebackq delims=" %%L in (`wevtutil.exe el`) do (
  echo Clearing: %%L
  wevtutil.exe cl "%%L"
)

ipconfig /flushdns

