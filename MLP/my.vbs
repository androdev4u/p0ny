Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "C:\lock_your_computer\little.bat" & Chr(34), 0
Set WinScriptHost = Nothing
