@echo off
set "_SETSVC=.\scripts\_setSvc.cmd"

powershell "Get-AppxPackage -AllUsers "*Xbox*" | Remove-AppxPackage"
powershell "Get-AppxPackage -AllUsers "*GamingApp*" | Remove-AppxPackage"

call "%_SETSVC%" XboxNetApiSvc 4
call "%_SETSVC%" XblGameSave 4
call "%_SETSVC%" XblAuthManager 4
call "%_SETSVC%" XboxGipSvc 4
call "%_SETSVC%" BcastDVRUserService 4
call "%_SETSVC%" GameInputSvc 4
