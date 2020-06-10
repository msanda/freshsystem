The script
=============

This chocloatey setup is to configure my personal machine to a dev machine. 

Getting Started
-------------------------

# Right click file, and run as admin


For windows 10 users always make sure you backup your ACLS for the windows appstore. This will save you headache in the future..

Open Command Prompt as Admin
Backup
icacls "X:\PathToRestored\Program Files\WindowsApps" /save "X:\WhereToSave\WindowsApps.acl"

Restore
icacls "%ProgramFiles%" /restore "X:\PathToSaved\WindowsApps.acl"

Provide the right ownership
icacls “%ProgramFiles%\WindowsApps” /setowner “NT Service\TrustedInstaller”
