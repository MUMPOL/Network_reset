# reset_network.ps1

Start-Process powershell -ArgumentList {
    netsh winsock reset
    netsh int ip reset
    ipconfig /release
    ipconfig /renew
    ipconfig /flushdns
    Start-Sleep -Seconds 10
    Restart-Computer -Force
} -Verb RunAs
