@echo off

set /p EXENAME=filename:
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%EXENAME%\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
