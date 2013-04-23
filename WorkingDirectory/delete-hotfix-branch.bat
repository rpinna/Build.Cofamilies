@echo off
if  "%1"==""  goto NoParameter
@setlocal enableextensions enabledelayedexpansion
set str1=%1
if x%str1:hotfix=%==x%str1% goto NotHotfix
endlocal
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
call git branch -d %1
call git push origin :%1

cd ..\Rob
echo.
echo ROB:
call git branch -d %1
call git push origin :%1

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git branch -d %1
call git push origin :%1

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git branch -d %1
call git push origin :%1

cd ..\WebApi
echo.
echo WebApi:
call git branch -d %1
call git push origin :%1

cd ..\Build.Cofamilies
echo.
echo BUILD.COFAMILIES
call git branch -d %1
call git push origin :%1

cd ..
echo.
echo Done!
goto End

:NotHotfix
echo.
echo NO ACTION TAKEN...
echo.
echo The branch name to delete must contain the string 'hotfix'
echo.
echo This protects against unwanted deletions of master, etc!
echo.
goto End

:NoParameter
echo.
echo Usage: delete-hotfix-branch branchname
echo.
echo delete-hotfix-branch:
echo
echo Each directory (repo) used to build cofamilies:
echo.
echo   1) Delete the specified hotfix branch locally
echo   2) Delete the specified hotfix branch on the remote origin
echo.
echo   1) git branch -d 'hotfix-branch'
echo   2) call git push origin :'hotfix-branch'
echo.
:End
