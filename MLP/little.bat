@echo off

:timer

rem two randoms needed to resolve xp/7 rand numb generator non-randomness issue
set /a rand1=%random%
set /a rand2=%random%%%3599+1

C:\lock_your_computer\sleep.exe %rand2%
start /B C:\lock_your_computer\ponies.bat

goto timer
