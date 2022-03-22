# ./clear-teams.ps1
# Clear MS Teams cache
# Tested on MS Teams 1.4.00.31569 (64-bit). It was last updated on 18/11/2021.
Write-Host "This script will force stop Outlook and Teams. Save your work before continue" -ForegroundColor Yellow
$challenge = Read-Host "Do you want to continue (Y/N)?"

if ($challenge -eq "Y"){
    Write-Host "Stopping Teams" -ForegroundColor Yellow
	Get-Process -ProcessName Teams | Stop-Process -Force
	Write-Host "Teams Stopped, please wait..." -ForegroundColor Green
	Write-Host "Stopping Outlook" -ForegroundColor Yellow
	Get-Process -ProcessName Outlook | Stop-Process -Force
	Write-Host "Outlook Stopped, please wait..." -ForegroundColor Green
    Clear
    
	   
    Start-Sleep -Seconds 5
    Write-Host "Clearing Teams Disk Cache"
    try{
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\blob_storage" -recurse -force | Remove-Item -Confirm:$false
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\cache" | Remove-Item -Confirm:$false
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\databases" -recurse -force | Remove-Item -Confirm:$false
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\gpucache" -force | Remove-Item -Confirm:$false
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\Indexeddb" -recurse -force | Remove-Item -recurse -Confirm:$false
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\Local Storage" -recurse -force | Remove-Item -recurse -Confirm:$false
        Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\tmp" -recurse -force | Remove-Item -Confirm:$false
    }catch{
        echo $_
    }
    Write-Host "Cleanup Complete." -ForegroundColor Green
}
# Restart Teams
Start-Process $env:LOCALAPPDATA\Microsoft\teams\current\Teams.exe