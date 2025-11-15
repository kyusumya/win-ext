@echo off

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 1 /f

call _setsvc.cmd "upnphost" 4
call _setsvc.cmd "ShellHWDetection" 4