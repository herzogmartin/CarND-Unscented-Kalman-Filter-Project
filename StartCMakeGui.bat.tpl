REM Edit the paths below according to your local installation and save this file
REM as StartCMakeGui.bat; it can be run to execute CMake GUI
@REM Batch script to generate a Visual Studio solution in build
@echo off

if exist SetLocalEnv.bat call SetLocalEnv.bat

cd /d "%~d0%~p0"
if not defined BUILD_DIR set BUILD_DIR=build

md "%BUILD_DIR%" 2> nul
cd "%BUILD_DIR%"

%CMAKE_DIR%\bin\cmake-gui.exe ..
