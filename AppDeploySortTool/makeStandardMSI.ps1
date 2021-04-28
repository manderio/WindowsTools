# Script for automatic MSI setup
# This is for 0 configuration MSI installation

#Variables
Set-Location $PSScriptRoot
$Source = "CMMsi\"
$Template = "MSIToolkit"
$Applications = Get-ChildItem $Source
$OutLocation = "Done\"

# Setting up all the files and naming them etc
$Applications.ForEach({
    $App = Get-ChildItem -Path $PSItem | Where-Object {$_.Name -like "*.msi"} | Select-Object -Property Name
    $InstallFiles = Get-ChildItem -Path $PSItem 
    $FolderName = $App.Name.Trim(".msi") # This is to get the folder name (yes, it is fucking dumb but it works)
    $Destination = "$OutLocation$FolderName"
    Copy-Item -Path $Template -Destination $Destination -Recurse
    Copy-Item -Path $InstallFiles -Destination "$Destination/Files/" 
})