# WindowsPowerShell

TODO: copy .gitconfig to $home so my git alias work the same way they do on linux

PowerShell scripts for my Windows systems. Like .bashrc but for Windows.

## One-Command Install

**1.** Download and run powershell_flair.ps1


## Manual Install

This same steps are in powershell_flair.ps1. You may download and run that one script if you like.

**1.**  Backup existing directory if it exists. Otherwise create your Windows $PROFILE directory
```
# Test for and create your Windows $PROFILE directory if it does not already exist
if (!(Test-Path -Path $PROFILE )) {
  { New-Item -Type File -Path $PROFILE -Force }
} else {
    #Backup the files in your $profile directory if it DOES exist    
    Copy-Item "$(Split-Path -Path $profile)" -Destination "$(Split-Path -Path $profile)_backup_$(get-date -f yyyymmdd_HHmmss)" -Recurse
}
```

**2.** Delete the files in your original $profile directory that we just backed up
```
Remove-Item "$(Split-Path -Path $profile)\*" -Recurse
```

**3.** Go to your $profile directory.
```
Split-Path -Path $profile | cd
```

**4.** Clone these scripts into the directory you just CD'd to (use the . at the end of command)
```
git clone https://github.com/seriousfunk/WindowsPowerShell.git .
```

**5.** Open an new Powershell window or source your $profile if one is already open
```
. $profile
```

More info on [Windows profile directories](https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6) (e.g for Current User, All users).


