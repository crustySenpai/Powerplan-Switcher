@echo off
title Powerplan Switcher by crustySenpai

echo     //////////////////////////
echo    //  Powerplan Switcher  //
echo   //////////////////////////
echo.
goto select

:select
powercfg /GETACTIVESCHEME
echo.
echo.
echo What Powerplan do you want to switch to?
echo.
echo   1 = Balanced
echo   2 = Ultimate Performance
echo   3 = Power Saving
echo   4 = High Performance
echo   5 = Exit
echo.
goto choice

:choice
set /p c=Select your Option: 
echo.
if "%c%" GTR "5" goto choice
if "%c%" LSS "1" goto choice
if "%c%"=="1" goto balanced
if "%c%"=="2" goto ultimate
if "%c%"=="3" goto saving
if "%c%"=="4" goto high
if "%c%"=="5" goto exit

:balanced
echo Switching to Balanced...
powercfg /s 381b4222-f694-41f0-9685-ff5bb260df2e
cls
echo Powerplan sucessfully changed!
echo.
goto select

:ultimate
echo Switching to Ultimate Performance...
powercfg /s 168d3349-aca3-4d57-8647-21d81ea13ca3
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
