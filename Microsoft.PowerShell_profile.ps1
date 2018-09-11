# Get Path to Microsoft.PowerShell_profile.ps1
$wpsPath = Split-Path -Path $profile

# ALIAS Definitions 
set-alias -name gh -value get-help 
set-alias -name c -value cls
set-alias -name cl -value $wpsPath\my_scripts\cls-dir.ps1
Set-alias -name path -value $wpsPath\my_scripts\show-env-path.ps1
set-alias -name cdi -value $wpsPath\my_scripts\docker-images.ps1
set-alias -name cdc -value $wpsPath\my_scripts\docker-containers.ps1

################################################################################# 
# BANNER 
#################################################################################
function fortune {
	$fortunes = Get-Content $wpsPath\my_scripts\fortune.txt -raw
	Get-Random $fortunes.split('%')
}

# Remove the line below if you do not want fortune to run when PowerShell starts
Write-host ""; fortune | Write-host -foregroundcolor red; Write-host ""

Write-host ""
Write-host -foregroundcolor red "Without your space helmet, Dave? You're going to find that rather difficult." 

