@echo off
title Powerplan Switcher by crustySenpai

echo     //////////////////////////
echo    //  Powerplan Switcher  //
echo   //////////////////////////
echo.
goto select

:select
echo What Powerplan do you want to switch to?
echo.
echo   1 = Show current Powerplan
echo   2 = Balanced
echo   3 = Ultimate Performance
echo   4 = Power Saving
echo   5 = High Performance
echo   6 = Exit
echo.
goto choice

:choice
set /p c=Select your Option: 
echo.
if "%c%" GTR "6" goto choice
if "%c%" LSS "1" goto choice
if "%c%"=="1" goto current
if "%c%"=="2" goto balanced
if "%c%"=="3" goto ultimate
if "%c%"=="4" goto saving
if "%c%"=="5" goto high
if "%c%"=="6" goto exit

:current
cls
powercfg /GETACTIVESCHEME
echo.
echo.
goto select

:balanced
echo Switching to Balanced...
powercfg /s 381b4222-f694-41f0-9685-ff5bb260df2e
cls
echo Powerplan sucessfully changed!
echo.
goto select

:ultimate
echo Switching to Ultimate Performance...
powercfg /s 22922280-5ac0-40c0-bcea-d66432e7dbcf
cls
echo Powerplan sucessfully changed!
echo.
goto select

:saving
echo Switching to Power Saving...
powercfg /s a1841308-3541-4fab-bc81-f71556f20b4a
cls
echo Powerplan sucessfully changed!
echo.
goto select

:high
echo Switching to High Performance...
powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
cls
echo Powerplan sucessfully changed!
echo.
goto select

:exit
exit