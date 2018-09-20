# Get Path to Microsoft.PowerShell_profile.ps1

$wpsPath = Split-Path -Path $profile


# ALIAS Definitions 

set-alias -name gh -value get-help 
set-alias -name c -value cls
set-alias -name cl -value $wpsPath\my_scripts\cls-dir.ps1
Set-alias -name path -value $wpsPath\my_scripts\show-env-path.ps1
set-alias -name cdi -value $wpsPath\my_scripts\docker-images.ps1
set-alias -name cdc -value $wpsPath\my_scripts\docker-containers.ps1
set-alias -name drmc -value $wpsPath\my_scripts\docker-drmc.ps1


# BANNER 

# You can change or add fortune files at $wpsPath\fortunes
function fortune {
	$fortuneFile = "$wpsPath\fortunes\politics.txt"
	if (Test-Path $fortuneFile -PathType Leaf) {
		$fortunes = Get-Content $fortuneFile -raw
		Get-Random $fortunes.split('%')
		
	}
	else {
		"`nWithout your space helmet, Dave? You're going to find that rather difficult.`n" 
	}
}


# Remove the line below if you do not want fortune to run when PowerShell starts
Write-host ""; fortune | Write-host -foregroundcolor red; Write-host ""

