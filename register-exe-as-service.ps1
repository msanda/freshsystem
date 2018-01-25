$serviceName = "MyService"

function ReinstallService1 ($serviceName, $binaryPath, $login, $pass)
{  
    Write-Host "installing service"
    # creating credentials which can be used to run my windows service
    $secpasswd = ConvertTo-SecureString $pass -AsPlainText -Force
    $mycreds = New-Object System.Management.Automation.PSCredential ($login, $secpasswd)

    # creating widnows service using all provided parameters
    New-Service -name $serviceName -binaryPathName $binaryPath -displayName $serviceName -startupType Automatic -credential $mycreds
    Write-Host "installation completed"
}

if (Get-Service $serviceName -ErrorAction SilentlyContinue)
{
    $serviceToRemove = Get-WmiObject -Class Win32_Service -Filter "name='$serviceName'"
    $serviceToRemove.delete()
    "service removed"
}
else
{
    "service does not exists"
}

ReinstallService1($serviceName,"c:\Temp\APP.exe","Myuser","MyPassword");
