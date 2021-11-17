:: Executes Requested Tasks For Meta Assignments
@echo off
 if EXIST test/ del.bat
md "test/blue/cyan"
cd test/blue/cyan
type NUL> COLOR.bat

md next



:: Configure color namer

echo setlocal >>COLOR.bat
echo set parent= %%cd%% >> COLOR.bat

echo set var= This file is in folder %%parent%% >> COLOR.bat

echo echo %%var%% >> COLOR.bat

 


copy COLOR.bat  next\
ren next\Color.bat COLORnext.bat


:: return to dir
cd .. 
cd .. 

::add magenta
robocopy blue red /e
cd red
ren cyan magenta
cd ".." 


cd test
type NUL> scriptsscript.bat
type NUL> contentscript.bat

::echo type NUL^>^> scripts.txt >> scriptsscript.bat
echo dir /b /s *.bat ^>^> scripts.txt >>scriptsscript.bat

::echo type NUL^>^> scripts.txt >> contentscript.bat
echo  dir /b /s *.bat ^>^> content.txt >> contentscript.bat

ICACLS blue/cyan/next/COLORnext.bat /grant "Everyone":F
ICACLS blue/cyan/COLOR.bat /grant "Everyone":F
ICACLS red/magenta/next/COLORnext.bat /grant "Everyone":F
ICACLS red/magenta/COLOR.bat /grant "Everyone":F
cd ..
find /n "folder" dir >> foundText.txt
rd /S  "test\"








test.bat

