@echo off

del /f /s /q "%windir%\Temp"
del /f /s /q "%localappdata%\Temp"
del /f /s /q "%windir%\Prefetch"

wevtutil clear-log Application
wevtutil clear-log Security
wevtutil clear-log System
wevtutil clear-log Setup
wevtutil clear-log ForwardedEvents
wevtutil clear-log Microsoft-Windows-PowerShell/Operational
wevtutil clear-log Microsoft-Windows-EventCollector/Operational
wevtutil clear-log Microsoft-Windows-TaskScheduler/Operational

ipconfig /flushdns
