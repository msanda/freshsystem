Set-ExecutionPolicy Unrestricted

# Chocolatey
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# sync what has already been installed with choclatey
choco list -lo
# install applications

# install sysinternals to  C:\ProgramData\chocolatey\lib\sysinternals\tools if you want to change the location use --params "'/installationpath:C:\ProgramData\sysinternals'"
choco install sysinternals --force --force-dependencies -y  
choco install fiddler --force --force-dependencies -y
choco install github --force --force-dependencies -y
choco install poshgit --force --force-dependencies -y
choco install azurestorageexplorer --force --force-dependencies -y
choco install windowsazurepowershell --force --force-dependencies -y
choco install visualstudiocode --force --force-dependencies -y
# if you need sql management studio
#choco install mssqlservermanagementstudio2014express
choco install chefdk --force --force-dependencies -y
choco install notepad2 --force --force-dependencies -y
choco install srwareiron.install --force --force-dependencies -y
choco install 7zip.install --force --force-dependencies -y
#if you need nodejs
#cints node.js.install -version 4.4.7
choco install webstorm --force --force-dependencies -y
#install xshell
choco install mongochef --force --force-dependencies -y
choco install fiddler4 --force --force-dependencies -y
choco install pycharm-professional --force --force-dependencies -y
choco install visualstudio2017enterprise --installargs "/ProductKey YOURKEYHERE /InstallSelectableItems WebTools;SQL;PowershellTools" -y
# restart Computer after everything has been installed
shutdown /r /t 0 /d P:0:0

#download telerik api testing https://www.telerik.com/download-trial-file/v2/teststudio-apis
#download GitKraken  https://www.gitkraken.com/

#
