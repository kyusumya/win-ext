@echo off

call "C:\Windows\AtlasDesktop\3. General Configuration\FSO and Game Bar\Disable FSO and Game Bar Support.cmd"
call "C:\Windows\AtlasDesktop\3. General Configuration\Search Indexing\Disable Search Indexing.cmd"
echo y | call "C:\Windows\AtlasDesktop\3. General Configuration\Sleep\Disable Sleep.cmd"
call "C:\Windows\AtlasDesktop\3. General Configuration\System Restore\Disable System Restore.cmd"

echo 1 | call "C:\Windows\AtlasDesktop\6. Advanced Configuration\Boot Configuration\Appearance\Spinning Animation.cmd"

call "C:\Windows\AtlasDesktop\6. Advanced Configuration\Services\Bluetooth\Disable Bluetooth.cmd"
call "C:\Windows\AtlasDesktop\6. Advanced Configuration\Services\Lanman Workstation (SMB)\Disable Lanman Workstation.cmd"
call "C:\Windows\AtlasDesktop\6. Advanced Configuration\Services\Network Discovery\Disable Network Discovery Services.cmd"
call "C:\Windows\AtlasDesktop\6. Advanced Configuration\Services\Printing\Disable Printing.cmd"
call "C:\Windows\AtlasDesktop\6. Advanced Configuration\Services\Superfetch\Disable SuperFetch.cmd"

echo 1 | call "C:\Windows\AtlasDesktop\9. Troubleshooting\Telemetry Components.cmd"
