@echo off
set wallpaper=winter.bmp

xcopy "c:\lock_your_computer\%wallpaper%" "c:\images\" /i /y > nul
goto pwned
  :pwned
  :: Configure Wallpaper
  REG ADD "HKCU\Control Panel\Desktop" /V Wallpaper /T REG_SZ /F /D "c:\images\%wallpaper%"
  REG ADD "HKCU\Control Panel\Desktop" /V WallpaperStyle /T REG_SZ /F /D 2
  REG ADD "HKCU\Control Panel\Desktop" /V TileWallpaper /T REG_SZ /F /D 0
goto refresh
  :refresh
  :: Make the changes effective immediately
  %SystemRoot%\System32\RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
exit
