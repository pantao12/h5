@echo off
echo 1/5 ------ build --------------------------------start
F:
echo 2/5 ------ build --------------------------------clone
git clone -b release   git@github.com:cheng-junfeng/readme.git
echo 3/5 ------ build --------------------------------build
call autoBuild1.bat
cd ..
echo 4/5 ------ build --------------------------------copy
xcopy readme\app\build\outputs\apk\release\wesafe.apk    .  /y
@echo build %date% %time% >>version
echo 5/5 ------ build --------------------------------end
pause
pause
pause