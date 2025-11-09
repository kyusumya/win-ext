@echo off

del /f /s /q "%windir%\Temp"
del /f /s /q "%localappdata%\Temp"
del /f /s /q "%windir%\Prefetch"

ipconfig /flushdns
