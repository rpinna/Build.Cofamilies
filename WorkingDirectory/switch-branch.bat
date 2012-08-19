@echo off
if  "%1"==""  goto NoParameter
echo Switching to branch %1
echo Lib, Rob, CofamiliesJS, Cofamilies, and Build.Cofamilies...

cd Lib
echo.
echo LIB:
call git checkout %1

cd ..\Rob
echo.
echo ROB:
call git checkout %1

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git checkout %1

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git checkout %1

cd ..\Build.Cofamilies
echo.
echo BUILD.COFAMILIES
call git checkout %1

cd ..
echo.
echo Done!

goto End
:NoParameter
echo Usage: switch-branch branchname
:End
