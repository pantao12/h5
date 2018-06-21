@echo off
echo pull
call autoBuild1.bat
echo clean
call autoBuild2.bat
echo build
call autoBuild3.bat
echo copy
xcopy app\build\outputs\apk\release\*.apk     C:\Users\YangBei\Desktop\share\wesafeApp
echo end
pause