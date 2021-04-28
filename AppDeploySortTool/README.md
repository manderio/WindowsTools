## Tool for sorting up applications for standard MSI Deploy using ADTK
This script tool will create AppDeployToolKit folders that can be used in the Intunes automation script. Note, .exe files should be placed in a folder with the application name on it, .msi files should be renamed to the desired name of the .intunewin file. And don't use spaces in the name. I haven't tested it, and I won't ever fix any issues that arise from it. 

### Important
Before you begin, make sure you have the following folders in your tree:
#### For MSI:
- CMMsi
- Done
- MSIToolkit

#### For EXE:
- CMExe
- DoneExe
- ExeToolkit

### Usage 
- Put any MSI files in CMMsi and any exe files in CMExe
- Make sure that the names of the folders/files in CMExe or CMMsi are the names of the correct file.
- To make MSI folders using the standard installation, just run the makeStandardMSI.ps1 script.
- To move exe files into the Toolkit/Files folder, use the moveExe.ps1 script. 

### FAQ
**Will this make everything magically work?**
Yesn't. MSI files that can be installed using the standard MSI method will work using this. The exe files however will only move the contents of the subfolders to the correct location in the AppDeployToolKit folder. This tool is mainly made due to me being lazy to being able to set up. 

**I have a different standard for how I set up my MSI files, can I use this?**
Yes, just edit the script in the Toolkit folders. This is the template that will be used for the copying of the files. 

**What parts of this did you make?**
I only did the folder structure for everything, as well as the moveExe.ps1 and makeStandardMSI.ps1

**Can I modify this?**
Yes, go ahead, feel free to shoot me a PR as well if you really feel like it. I'll look through at some point! Though keep in mind, I did not make nor do I hold the license for AppDeployToolkit, you can find [here](https://github.com/PSAppDeployToolkit/PSAppDeployToolkit). 
