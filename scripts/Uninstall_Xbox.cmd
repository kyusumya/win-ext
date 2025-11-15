@echo off

powershell "Get-AppxPackage -AllUsers "*Xbox*" | Remove-AppxPackage"
powershell "Get-AppxPackage -AllUsers "*GamingApp*" | Remove-AppxPackage"

setSvc.cmd XboxNetApiSvc 4
setSvc.cmd XblGameSave 4
setSvc.cmd XblAuthManager 4
setSvc.cmd XboxGipSvc 4
setSvc.cmd BcastDVRUserService 4
setSvc.cmd GameInputSvc 4
