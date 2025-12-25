@echo off
set _SETSVC="%~1\_setSvc.cmd"

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 1 /f

call "%_SETSVC%" "upnphost" 4

call "%_SETSVC%" "ShellHWDetection" 4
