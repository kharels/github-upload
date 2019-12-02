# >>> read-host -assecurestring | convertfrom-securestring | out-file U:\mysecurestring.txt
# Start-Process -FilePath 'C:\Program Files (x86)\Mozilla Firefox\firefox.exe' -Verb runAs -Credntial
# $userName = "HMS\e006487"
# $password = "JunkPassWORD"

# function New-Credential($u,$p) {
#   $secpasswd = ConvertTo-SecureString $p -AsPlainText -Force
#    return New-Object System.Management.Automation.PSCredential ($u, $secpasswd)
# }
# $cred = New-Credential $userName $password
# Start-Process -FilePath 'C:\Program Files (x86)\Mozilla Firefox\firefox.exe' -Credential $cred
# Write-Output $ 

# process called wscript



$users = Get-Content -Path U:\userlist.txt
foreach($username in $users)
{
    $password = Get-Content "c:\Users\$user\Documents\mysecurestring.txt" | ConvertTo-SecureString
    $cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password
    Stop-Process -Name "wscript" -Credential $cred
    }

#Insert DB2 script -pre
#Insert copy of files for every user

Start-Sleep -Seconds 60

foreach($username in $users)
{
    $password = Get-Content "c:\Users\$user\Documents\mysecurestring.txt" | ConvertTo-SecureString
    $cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password
    Start-Process -Name "wscript" -Credential $cred
    }

#Insert DB2 script -post