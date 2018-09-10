# ALIAS Definitions 
set-alias -name gh -value get-help 
set-alias -name c -value cls
set-alias -name cl -value $home\OneDrive\Documents\WindowsPowerShell\my_scripts\cls-dir.ps1
Set-alias -name path -value $home\OneDrive\Documents\WindowsPowerShell\my_scripts\show-env-path.ps1
set-alias -name cdi -value $home\OneDrive\Documents\WindowsPowerShell\my_scripts\docker-images.ps1
set-alias -name cdc -value $home\OneDrive\Documents\WindowsPowerShell\my_scripts\docker-containers.ps1

# FUNCTIONS 
#get detailed help 
Function GHD 
{ 
	CLS             
	Get-help $args[0] -detailed | more 
} #END GHD Function

# VARIABLES 
# $DEV = "C:\dev"

# change home directory
cd $home

################################################################################# 
# BANNER 
#################################################################################

Write-host ""
Write-host -foregroundcolor red "Without your space helmet, Dave? You're going to find that rather difficult." 
#Write-host -foregroundcolor green "USEFUL COMMANDS" 
#Write-host -foregroundcolor yellow "  GET-HELP (Get-HELP ABOUT_*)" 
#Write-host -foregroundcolor yellow "  GET-HELP GET-SERVICE -Detailed" 
#Write-host -foregroundcolor yellow "  GET-COMMAND" 
#Write-host -foregroundcolor yellow "  GET-MODULE -ListAvailable" 
Write-host ""

# test
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
