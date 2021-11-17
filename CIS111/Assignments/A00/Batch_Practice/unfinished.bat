:: Executes Requested Tasks For Meta Assignments
@echo off
 if EXIST test/ del.bat
md "test/blue/cyan"
cd test/blue/cyan
type NUL> COLOR.bat
ICACLS COLOR.bat /grant "Everyone":F
md next
copy COLOR.bat > next/COLOR.bat


:: Configure color namer

echo setlocal >>COLOR.bat
echo set parent= %%cd%% >> COLOR.bat

echo set var= This file is in folder %%parent%% >> COLOR.bat

echo echo %%var%% >> COLOR.bat

 





:: return to dir
cd ".." 
cd ".." 
::add magenta
md "red/magenta"
cd ".." 
 copy test/blue/cyan/COLOR.bat > "test/red/magenta/COLOR.bat"
md "test/red/magenta/next"
copy test/red/magenta/COLOR.bat >  test/red/magenta/next/COLOR.bat
ICACLS test/red/magenta/COLOR.bat /grant "Everyone":F

cd test
dir /b /s *.bat > scripts.txt









test.bat

