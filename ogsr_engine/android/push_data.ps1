# Installs the OGSR APK only. Game data is NOT copied or pushed by this script.
# Place the game files manually in /storage/emulated/0/Download/OGSR.
# Usage:
#   powershell -File ogsr_engine\android\push_data.ps1
param()
$ErrorActionPreference = 'Stop'
$adb = 'D:\android_stage\platform-tools\adb.exe'
$apk = 'D:\android_stage\ogsr.apk'

& $adb install -r $apk
if ($LASTEXITCODE -ne 0) { throw 'adb install failed' }

Write-Host ''
Write-Host 'APK installed. No game files were copied to the device.'
Write-Host 'Expected game data path: /storage/emulated/0/Download/OGSR'
Write-Host 'Make sure OGSR has Android "All files access" permission.'
