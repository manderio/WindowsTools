# Automation script for intune convertions

Set-Location $PSScriptRoot
$Applications = Get-ChildItem ".\Applications\"
$OutFolder = "$PSScriptRoot\Done\"


# Loop through application list and grab path + applicationName
foreach ($Item in $Applications) {
   $ApplicationName = Get-Item $Item | Select-Object -Property Name
   .\IntuneWinAppUtil.exe -c $Item -s Deploy-Application.exe -o $OutFolder
   Get-ChildItem -Path $OutFolder\Deploy-Application.* | Rename-Item  -NewName {$_.Name -Replace "Deploy-Application", $ApplicationName.Name}
}
