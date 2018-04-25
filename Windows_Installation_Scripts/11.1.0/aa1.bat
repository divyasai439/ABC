@Echo OFF
title FioranoInstallation
taskkill /IM  java.exe /F
taskkill /IM  java.exe /F
taskkill /IM eStudio-win-x86_64.exe /F
taskkill /FI "Windowtitle eq Administrator: C:\Windows\system32\cmd.exe" /IM cmd.exe