@ECho OFF
title DeletingFiorano
set folder="C:\Fiorano\11"
cd /d %folder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)