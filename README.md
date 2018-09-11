# WindowsPowerShell

PowerShell scripts for my Windows systems. Like ./bashrc but for Windows.

**Backup your existing WindowsPowerShell profile and scripts first if you want to keep them.**

**1.** Test for and create your Windows $PROFILE directory if it does not already exist
```
if (!(Test-Path -Path $PROFILE ))
{ New-Item -Type File -Path $PROFILE -Force }
```

**2.** Backup or Delete the files in your $profile directory 
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


