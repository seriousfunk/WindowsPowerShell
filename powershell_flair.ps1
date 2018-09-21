# Backup existing Windows $PROFILE directory if it exists
if (Test-Path -Path $PROFILE) {
    Copy-Item "$(Split-Path -Path $profile)" -Destination "$(Split-Path -Path $profile)_backup_$(get-date -f yyyymmdd_HHmmss)" -Recurse
    Remove-Item "$(Split-Path -Path $profile)" -Recurse -Force
}

# Create a new Windows $PROFILE directory
New-Item -Type File -Path $PROFILE -Force

# Delete the empty Microsoft.PowerShell_profile.ps1 the previous command created
Remove-Item "$(Split-Path -Path $profile)" -Recurse -Force

# Clone these scripts into your Windows $PROFILE directory
git clone https://github.com/seriousfunk/WindowsPowerShell.git $(Split-Path -Path $profile)

# Open an new Powershell window or source your $profile if one is already open
. $profile
