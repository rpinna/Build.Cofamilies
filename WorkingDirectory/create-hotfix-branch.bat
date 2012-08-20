@echo off
if  "%1"==""  goto NoParameter
echo For each directory (repo) used to build cofamilies:
echo.
echo   1) Create a new hotfix branch and switch to it
echo   2) Configure remote tracking on the new branch
echo.
echo   1) git checkout -b 'branchname' master
echo   2) git push -u origin 'branchname'
echo.
echo   Lib, Rob, Cofamilies, Cofamilies-JS, Build.Cofamilies
echo.
echo =======================================================

cd Lib
echo.
echo LIB:
call git checkout -b %1 master
call git push -u origin %1

cd ..\Rob
echo.
echo ROB:
call git checkout -b %1 master
call git push -u origin %1

pause

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git checkout -b %1 master
call git push -u origin %1

pause

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git checkout -b %1 master
call git push -u origin %1

cd ..\Build.Cofamilies
echo.
echo BUILD.COFAMILIES
call git checkout -b %1 master
call git push -u origin %1

cd ..
echo.
echo Done!

:NoParameter
echo.
echo Usage: create-hotfix-branch branchname
echo.
echo create-hotfix-branch:
echo
echo Each directory (repo) used to build cofamilies:
echo.
echo   1) Create a new hotfix branch and switch to it
echo   2) Configure remote tracking on the new branch
echo.
echo   1) git checkout -b 'branchname' master
echo   2) git push -u origin 'branchname'
echo.
:End
