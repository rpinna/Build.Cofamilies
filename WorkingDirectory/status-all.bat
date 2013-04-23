@echo off
echo Lib...
cd Lib
call git status
echo.
echo Rob...
cd ..\Rob
call git status
echo.
echo Cofamilies-JS...
cd ..\Cofamilies-JS
call git status
echo.
echo Cofamilies...
cd ..\Cofamilies
echo.
call git status
echo.
echo WebApi...
cd ..\WebApi
call git status
echo.
echo Build.Cofamilies...
cd ..\Build.Cofamilies
call git status
cd ..
