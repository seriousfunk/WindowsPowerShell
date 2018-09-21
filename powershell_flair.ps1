# Test for and create your Windows $PROFILE directory if it does not already exist
if (!(Test-Path -Path $PROFILE )) {
  { New-Item -Type File -Path $PROFILE -Force }
} else {
    #Backup the files in your $profile directory if it DOES exist    
    Copy-Item "$(Split-Path -Path $profile)" -Destination "$(Split-Path -Path $profile)_backup_$(get-date -f yyyymmdd_HHmmss)" -Recurse
}

# Delete the files in your $profile directory
Remove-Item "$(Split-Path -Path $profile)\*" -Recurse

# Go to your $profile directory.
Split-Path -Path $profile | cd

# Clone these scripts into the directory you just CD'd to (use the . at the end of command)
git clone https://github.com/seriousfunk/WindowsPowerShell.git .

# Open an new Powershell window or source your $profile if one is already open
. $profile