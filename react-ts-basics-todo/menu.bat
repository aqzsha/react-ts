@echo off
:: Save the initial directory
set "initial_dir=%CD%"

:menu
cls
echo ===================================
echo   Author: Tasbay Bayandybol, IT1-2412
echo ===================================
echo   Welcome to the DOS Game Menu   
echo ===================================
echo 1. Platform Games
echo 2. Two Player Games
echo 3. Action Games
echo 4. Exit
echo ===================================
set /p choice="Enter your choice (1-4): "

if"%choice%"=="1" goto platform
if"%choice%"=="2" goto twoplayer
if"%choice%"=="3" goto action 
if"%choice%"=="4" goto exit 
echo Invalid choice, please try again.
goto menu

:platform
cls
echo ===================================
echo 1. Dave
echo 2. Back to Main Menu
echo ===================================
set /p spchoice="Choose a game (1-3): "

if "%spchoice%"=="1" goto game1
if "%spchoice%"=="3" goto menu
echo Invalid choice, please try again.
goto platform

:game1
cls
cd .\Dave
start "" "dd2.exe"
goto exit