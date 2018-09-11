# WindowsPowerShell

PowerShell scripts for my Windows systems. Like ./bashrc but for Windows.

! Backup your existing WindowsPowerShell profile and scripts first if you want to keep them.

1. Test for and create your Windows $PROFILE directory if it does not already exist
```
if (!(Test-Path -Path $PROFILE ))
{ New-Item -Type File -Path $PROFILE -Force }
```

More info on [Windows profile directories](https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6) (e.g for Current User, All users).

2. Go to your $profile directory.
```
> Split-Path -Path $profile | cd
```

3. Clone these scripts.
```
> git clone https://github.com/seriousfunk/WindowsPowerShell.git 
```

4. Open an new Powershell window or source your $profile if one is already open
```
. $profile
```





