@echo off
chcp 65001 >nul

:startmain
cls

echo  ██████  ████████  ██████   ██████  ██
echo ██  ████    ██    ██    ██ ██    ██ ██
echo ██ ██ ██    ██    ██    ██ ██    ██ ██
echo ████  ██    ██    ██    ██ ██    ██ ██
echo  ██████     ██     ██████   ██████  ███████
echo.
echo ================================
echo.
echo -showip           -clear
echo -logoff           -fakehack
echo -opendoc          -coming soon
echo.
echo ================================
echo.

:str
set "main="
set /p "main=tool:~$ "

if /i "%main%"=="-showip" goto showip
if /i "%main%"=="-clear" goto startmain
if /i "%main%"=="-logoff" goto logoff
if /i "%main%"=="-opendoc" goto opendoc
if /i "%main%"=="-fakehack" goto fakehack

echo.
echo Commande inconnue : %main%
pause
goto str


:showip
echo.
ipconfig
echo.
pause
goto str


:logoff
shutdown /l
exit


:opendoc
echo.
start https://github.com/Vvegetal/0Tool/blob/main/README.md
pause
goto str


:fakehack
echo.
call fakehack.bat
goto str
