# Aws specific insall Scripts for powershell

#if using any other os but windows  use the dotnetcore version, or you can install the dotnetcore version of powershell and then execute. 
#install dotnet core runtime.
#choco install dotnetcore-runtime.install
#To upgrade use
#choco upgrade dotnetcore-runtime.install

# this is the .net core verison, which means it will work on osx and linux systems
#Install-Package -Name AWSPowerShell.NetCore

#if you want to install to a specific directory uncomment the following
#Install-Package -Name AWSPowerShell.NetCore -Source https://www.powershellgallery.com/api/v2/ -ProviderName NuGet -ExcludeVersion -Destination <path to destination folder>


#Windows 10 install
Install-Package -Name AWSPowerShell -Force -A

#Import Module
Import-Module AWSPowerShell

# Add to powershell profile. this will allow powershell to load aws module on startup instead of calling 

$profile_toedit = $env:USERPROFILE+"\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

# we will now open notepad for the user to add a setting

notepad $profile_toedit

#add to the profile
#$AWStools= "C:\Program Files (x86)\AWS Tools\PowerShell\AWSPowerShell\AWSPowerShell.psd1"
#if (Test-Path($AWStools)){
#  Import-Module "$AWStools"
#}


#to update all aws powershell service uninstall the module first and reinstall
# this is for .netcore version
#Uninstall-Package -Name AWSPowerShell.NetCore -AllVersions


#verify module has been loaded.
#Get-AWSPowerShellVersion