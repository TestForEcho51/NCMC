set parentDir= %cd% 
for %%a in ("%~dp0\.") do set "parent=%%~nxa"
set var= This file is in folder %parent% 

echo %var% 


