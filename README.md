# WindowsPowerShell

TODO: copy .gitconfig to $home so my git alias work the same way they do on linux

PowerShell scripts for my Windows systems. Like .bashrc but for Windows.

## Installation

**1.** Download and run powershell_flair.ps1. Right-click the link below and save the raw sript data to your PC. 
https://raw.githubusercontent.com/seriousfunk/WindowsPowerShell/master/powershell_flair.ps1

**2.** Set execution policy and run powershell_flair.ps1 script
```
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; powershell_flair.ps1
```
This command sets the execution policy to bypass for only the current PowerShell session  After the window is closed, the next PowerShell session will open running with the default execution policy.

## Manual Install

This same steps are in powershell_flair.ps1. You may download and run that one script if you like.

**1.**  Backup existing directory if it exists.
```
if (Test-Path -Path $PROFILE) {
    Copy-Item "$(Split-Path -Path $profile)" -Destination "$(Split-Path -Path $profile)_backup_$(get-date -f yyyymmdd_HHmmss)" -Recurse
}
```
**2.** Create a new Windows $PROFILE directory
New-Item -Type File -Path $PROFILE -Force

**3.** Delete the empty Microsoft.PowerShell_profile.ps1 the previous command created
```
Remove-Item "$(Split-Path -Path $profile)\*" -Recurse
```

**4.** Clone these scripts into your Windows $PROFILE directory 
```
git clone https://github.com/seriousfunk/WindowsPowerShell.git $(Split-Path -Path $profile)
```

**5.** Open an new Powershell window or source your $profile if one is already open
```
. $profile
```

More info on [Windows profile directories](https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6) (e.g for Current User, All users).


