@echo off

dism /online /disable-feature /featurename:WorkFolders-Client /norestart
dism /online /disable-feature /featurename:MediaPlayback /norestart
dism /online /disable-feature /featurename:WindowsMediaPlayer /norestart
dism /online /disable-feature /featurename:MSRDC-Infrastructure /norestart
dism /online /disable-feature /featurename:LegacyComponents /norestart
dism /online /disable-feature /featurename:DirectPlay /norestart
dism /online /disable-feature /featurename:SearchEngine-Client-Package /norestart