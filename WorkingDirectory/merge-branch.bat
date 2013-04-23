@echo off
if  "%1"==""  goto NoParameter
echo For each directory (repo) used to build cofamilies:
echo.
echo   Merge the specified branch
echo.
echo   git merge --no-ff 'branchname'
echo.
echo   Lib, Rob, Cofamilies, Cofamilies-JS, Build.Cofamilies
echo.
echo =======================================================

cd Lib
echo.
echo LIB:
call git merge --no-ff %1

cd ..\Rob
echo.
echo ROB:
call git merge --no-ff %1

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git merge --no-ff %1

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git merge --no-ff %1

cd ..\WebApi
echo.
echo WebApi:
call git merge --no-ff %1

cd ..\Build.Cofamilies
echo.
call git merge --no-ff %1

cd ..
echo.
echo Done!
goto End
:NoParameter
echo.
echo Usage: merge-branch branchname
echo.
echo Each directory (repo) used to build cofamilies:
echo.
echo   Merge the specified branch
echo.
echo   git merge --no-ff 'branchname'
echo.
:End
