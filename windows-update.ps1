# windows-update.ps1
Set-ExecutionPolicy Bypass -Scope Process -Force

# Ensure PSWindowsUpdate module is installed
if (-not (Get-Module -ListAvailable -Name PSWindowsUpdate)) {
    Install-Module -Name PSWindowsUpdate -Force -Scope AllUsers
}

# Import the module
Import-Module PSWindowsUpdate -Force

# Check for updates
Write-Host "Checking for updates..."
$updates = Get-WindowsUpdate
$updates | Format-Table -AutoSize

# Prompt user
$choice = Read-Host "Do you want to install all updates now? (Y/N)"

# Normalize input and check
if ($choice.Trim().ToUpper() -eq 'Y') {
    Install-WindowsUpdate -AcceptAll -IgnoreReboot -Verbose
    Write-Host "Updates installed. Please reboot if required."
} else {
    Write-Host "Skipped installation."
}
