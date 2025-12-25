if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $cmd = Get-Command pwsh -ErrorAction SilentlyContinue
    $pwsh = if ($cmd) { $cmd.Source } else { $null }

    try {
        if ($pwsh) {
            Start-Process -FilePath $pwsh -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs -ErrorAction Stop
        } else {
            Start-Process -FilePath powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs -ErrorAction Stop
        }
        exit
    } catch { exit }
}

$scripts = $PSScriptRoot + "\scripts"

cmd /c "`"$scripts\Explorer.cmd`""
cmd /c "`"$scripts\Features.cmd`""
cmd /c "`"$scripts\Power.cmd`""
cmd /c "`"$scripts\Security.cmd`""
cmd /c "`"RunAsTI.cmd`" `"$scripts\Services.cmd`""
