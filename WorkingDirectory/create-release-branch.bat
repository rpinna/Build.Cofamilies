@echo off
if  "%1"==""  goto NoParameter
echo For each directory (repo) used to build cofamilies:
echo.
echo   1) Create a new release branch and switch to it
echo   2) Configure remote tracking on the new branch
echo.
echo   1) git checkout -b 'branchname' develop
echo   2) git push -u origin 'branchname'
echo.
echo   Lib, Rob, Cofamilies, Cofamilies-JS, Build.Cofamilies
echo.
echo =======================================================

cd Lib
echo.
echo LIB:
call git checkout -b %1 develop
call git push -u origin %1

cd ..\Rob
echo.
echo ROB:
call git checkout -b %1 develop
call git push -u origin %1

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git checkout -b %1 develop
call git push -u origin %1

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git checkout -b %1 develop
call git push -u origin %1

cd ..\WebApi
echo.
echo WebApi:
call git checkout -b %1 develop
call git push -u origin %1

cd ..\Build.Cofamilies
echo.
echo BUILD.COFAMILIES
call git checkout -b %1 develop
call git push -u origin %1

cd ..
echo.
echo Done!
goto End

:NoParameter
echo.
echo Usage: create-release-branch branchname
echo.
echo create-release-branch:
echo
echo Each directory (repo) used to build cofamilies:
echo.
echo   1) Create a new release branch and switch to it
echo   2) Configure remote tracking on the new branch
echo.
echo   1) git checkout -b 'branchname' develop
echo   2) git push -u origin 'branchname'
echo.
echo By convention the branch is named release-YYYYMMDD
:End
