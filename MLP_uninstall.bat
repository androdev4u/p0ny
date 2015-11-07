taskkill /f /IM sleep.exe /T
del /Q C:\lock_your_computer\*
del /Q C:\images\*
rd C:\lock_your_computer
rd C:\images
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /V Mylittleponies /F
taskkill /F /IM cmd.exe /T
exit
