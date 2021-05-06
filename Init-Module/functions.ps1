<# Functions for the init.ps1

This is the function folder that will include several functions that are useful for
every-day administrative tasks

Note that I am writing this in powershell 7.

Functions that are available/that I am setting up right now:
Psudo - a powershell version of linux command for "sudo". 
VersionSwitch - Run the command in a different version of powershell
ConnectSetup - Set up a remote connection for a host in the latest possible powershell version

Wishlist:
Make sure that psudo and versionSwitch can work together, aka, you can run the commands with each other to run as admin in a different powershell version
Create a standard object when setting up which stores things such as standard user and so on for the module
#>

# Enviroment variables
class Variables {
    [String]$UserContext
    [String]$PowershellVersion
    [String]$Installed
}

# to-do: add error class

# to-do: add a defaults class

# Switch to admin context for a command/scriptblock/script
function psudo {
    Param(
    [String]$Context = $Variables.UserContext,
    [Parameter(Mandatory=$true)]
    [scriptblock]$ScriptBlock
    )
    
    Switch ($Context) {
        'Admin' {Invoke-Command -ScriptBlock $ScriptBlock}
        'User' {$Credentials = Get-Credential
            Start-Process -Credential $Credentials -NoNewWindow {Invoke-Command -ScriptBlock $ScriptBlock} -Wait
            # to-do: add try catch here
        }
    }
}

# Run command/script in different powershell version, 
# requirements:
# Exit shortcut
# Info command
# Support for multiple commands
# Support for single line execution aka: VersionSwitch -DesiredVersion 5.1 -ScriptBlock {<#Do things here#>}
# prompt edit
function versionSwitch {
    Param (
        [String]$CurrentVersion = $Variables.PowershellVersion,
        [decimal]
        [Parameter(Mandatory=$true)]
        [ValidateScript(
            # make sure that the powershell version chosen is installed
        )]
        [ValidateSet(1.0, 2.0, 3.0, 4.0, 5.0, 5.1)]
        $DesiredVersion = 5.1 # to-do: replace it with the default class one
)
   $Info = @{
       InitMessage = "You now have switched from $CurrentVersion to $DesiredVersion"
       ExitCommand = "Exiting $DesiredVersion" # add a command here that allows you to exit
       Prompt = "prompt" # add a prompt of current path as well as powershell version

   } 
}

# Set up new server connection with latest supported powershell version
# Requirements:
# Check if remote host already got a connection set up with that version
# Replacement option
# Guided setup

function connectionSetup {
    Param (

    )
}