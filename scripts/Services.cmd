@echo off
set "SCRIPT_PATH=.\scripts\_setSvc.cmd"

@REM Diagnostic - Disabling these services will break Task Manager's network monitor
call "%SCRIPT_PATH%" "diagsvc" 4
call "%SCRIPT_PATH%" "DPS" 4
call "%SCRIPT_PATH%" "WdiServiceHost" 4
call "%SCRIPT_PATH%" "WdiSystemHost" 4

@REM Telemetry
call "%SCRIPT_PATH%" "whesvc" 4
call "%SCRIPT_PATH%" "wuqisvc" 4

@REM Data Usage
call "%SCRIPT_PATH%" "DusmSvc" 4

@REM Unnecessary
call "%SCRIPT_PATH%" "Bonjour Service" 4

call "%SCRIPT_PATH%" "Themes" 4
