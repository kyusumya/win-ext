@echo off
set "_SETSVC=.\scripts\_setSvc.cmd"

@REM Diagnostic - Disabling these services will break Task Manager's network monitor
call "%_SETSVC%" "diagsvc" 4
call "%_SETSVC%" "DPS" 4
call "%_SETSVC%" "WdiServiceHost" 4
call "%_SETSVC%" "WdiSystemHost" 4

@REM Telemetry
call "%_SETSVC%" "whesvc" 4
call "%_SETSVC%" "wuqisvc" 4

@REM Data Usage
call "%_SETSVC%" "DusmSvc" 4

@REM Unnecessary
call "%_SETSVC%" "Bonjour Service" 4

call "%_SETSVC%" "Themes" 4
