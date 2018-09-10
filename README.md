# WindowsPowerShell

PowerShell scripts for my Windows systems. Like ./bashrc but for Windows.

! Backup your existing WindowsPowerShell profile and scripts first if you want to keep them.

1. Test for and create your Windows $PROFILE directory if it does not already exist
```if (!(Test-Path -Path $PROFILE ))
{ New-Item -Type File -Path $PROFILE -Force }```

More info on [Windows profile directories](https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6) (e.g for Current User, All users).

2. Determine the directory your Windows profile is in.
```> echo $profile
C:\Users\<your_user_name>\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1```

3. Go to that directory.
```cd C:\Users\<your_user_name>\OneDrive\Documents\WindowsPowerShell\```

4. Clone these scripts.
```git clone https://github.com/seriousfunk/WindowsPowerShell.git ```




