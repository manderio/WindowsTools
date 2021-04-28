## Tool for automatic creation of file.intunewin
This is a tool written to automate the process of files with the .intunewin ending. It is made because I got tired of migrating things manually. Please enjoy. 

### Important
Before you begin, this script is designed to be run for files configured with the AppDeployToolkit. **I will not give detailed instructions as to how you can edit the script to make it general, but feel free to fork and modify the script as much as you like**. In order to prepare several app deployment toolkit deployments at once, please refer to the AppDeploySort tools, you can find out more here. 

### Before you start
For this, you will need to use the Mictosoft Win 32 Content Prep Tool. I am not the writer nor the provider of the exe needed for this. You Can find the latest version of it [here](https://github.com/PSAppDeployToolkit/PSAppDeployToolkit). I have no afilliation with this project, for the love of god, don't screech at Microsoft about my dumbass, thank you. All you need to do is download the latest version of it and put it in the main folder (same one as the script is placed in). You can then run the script. 

### Usage
- Rename your AppDeployToolkit folders, for example, the toolkit folder you are using in order to deploy firefox should be renamed to firefox and so on. 
- Place all your finished folders in a folder by the name 'Applications'. Make sure that you remove any old folders before starting the script. 
- Create an empty folder that you named 'Done'.
- Run the script, all finished .intunewin files can be found in the Done folder. 

