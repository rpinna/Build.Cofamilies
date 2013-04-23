@echo off

cd Lib
echo.
echo LIB:
call git push

cd ..\Rob
echo.
echo ROB:
call git push

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git push

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git push

cd ..\WebApi
echo.
echo WebApi:
call git push

cd ..\Build.Cofamilies
echo.
echo BUILD.COFAMILIES
call git push

cd ..
echo.
echo Done!

