# Script for automatic MSI setup
# This is for 0 configuration MSI installation

#Variables
Set-Location $PSScriptRoot
$Source = Get-ChildItem -Path "CMExe\"
$Template = "ExeToolkit"
$OutLocation = "DoneExe\"

# Setting up all the files and naming them etc
$Source.ForEach({
    $App = $PSItem | Select-Object -Property Name
    $FolderName = $App.Name
    $Destination = "$OutLocation$FolderName"
    $SourceFiles = Get-ChildItem -Path $PSItem 
    Copy-Item -Path $Template -Destination $Destination -Recurse
    Copy-Item -Path $SourceFiles -Destination "$Destination/Files/"
})