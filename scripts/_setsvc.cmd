@echo off
set SVCNAME=%~1
set STARTTYPE=%~2

reg query "HKLM\SYSTEM\CurrentControlSet\Services\%SVCNAME%" >nul 2>&1
if %errorlevel% neq 0 ( exit /b 1 )

reg add "HKLM\SYSTEM\CurrentControlSet\Services\%SVCNAME%" /v Start /t REG_DWORD /d %STARTTYPE% /f
sc stop "%SVCNAME%" >nul

