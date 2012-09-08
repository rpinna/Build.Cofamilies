@echo off
if  "%1"=="" or "%2"==""  goto MissingParameters
echo Setting tag to %1 with message %2...
echo Lib, Rob, CofamiliesJS, Cofamilies, and Build.Cofamilies...

cd Lib
echo.
echo LIB:
call git tag -a %1 -m %2

cd ..\Rob
echo.
echo ROB:
call git tag -a %1 -m %2

cd ..\Cofamilies-JS
echo.
echo COFAMILIES-JS:
call git tag -a %1 -m %2

cd ..\Cofamilies
echo.
echo COFAMILIES:
call git tag -a %1 -m %2

cd ..\Build.Cofamilies
echo.
echo BUILD.COFAMILIES
call git tag -a %1 -m %2

cd ..
echo.
echo Done!

goto End
:MissingParameters
echo.
echo Usage: create-tag tagname message
echo.
echo create-tag creates a tag with the specified name and message
echo in each of the directories (repos) used to build cofamilies
echo
echo git tag -a tagname -m message
echo By convention tagnames are formated as version-YYYYMMDD
echo.
:End
