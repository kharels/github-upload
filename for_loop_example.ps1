# Invoke-Command –ComputerName hmsit01 –ScriptBlock {Start-Process notepad.exe} -Credential
# $cred = Get-Credential
# Invoke-WmiMethod –ComputerName hmsit01.hms.hmsy.com -Class win32_process -Name create -ArgumentList "notepad.exe"
for ($i=0; $i -le 3; $i++ ) { 
    Start-Process  "C:\Users\e006487\Desktop\putty.exe"
    }