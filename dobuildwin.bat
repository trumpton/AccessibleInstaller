@echo off
rem
rem Microsoft Visual C++ / QT Build Script for Accessible Apps
rem

rem
rem Builds into build folder, then Copies files to bin
rem

set AA=d:\Projects\AccessibleApps
set QMAKE=E:\Qt5.10.1\5.10.1\msvc2015_64\bin\qmake.exe
set WINDEPLOYQT=E:\Qt5.10.1\5.10.1\msvc2015_64\bin\windeployqt.exe
set WINSPEC=win32-msvc
set OPENSSL=%AA%\deploy\src\openssl64\bin\*.dll

cd %AA%
deltree %AA%\bin
mkdir %AA%\build
mkdir %AA%\build\ContactManager
mkdir %AA%\build\CopyFiles
mkdir %AA%\build\EasyNotepad
mkdir %AA%\build\EncPad
mkdir %AA%\build\EncryptFolder
mkdir %AA%\build\GoogleFetch
mkdir %AA%\build\KeyBackup
mkdir %AA%\build\ParseWeb
mkdir %AA%\bin

rem
rem Contact Manager
rem

cd %AA%\build\ContactManager
nmake clean
%QMAKE% %AA%\ContactManager\ContactManager.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% ContactManager.exe

rem
rem CopyFiles
rem

cd %AA%\build\CopyFiles
nmake clean
%QMAKE% %AA%\CopyFiles\CopyFiles.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% CopyFiles.exe

rem
rem EasyNotepad
rem

cd %AA%\build\EasyNotepad
nmake clean
%QMAKE% %AA%\EasyNotepad\EasyNotepad.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% EasyNotepad.exe


rem
rem EncPad
rem

cd %AA%\build\EncPad
nmake clean
%QMAKE% %AA%\EncPad\EncPad.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% EncPad.exe

rem
rem EncryptFolder
rem

cd %AA%\build\EncryptFolder
nmake clean
%QMAKE% %AA%\EncryptFolder\EncryptFolder.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% EncryptFolder.exe

rem
rem GoogleFetch
rem

cd %AA%\build\GoogleFetch
nmake clean
%QMAKE% %AA%\GoogleFetch\GoogleFetch.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% GoogleFetch.exe

rem
rem KeyBackup
rem

cd %AA%\build\KeyBackup
nmake clean
%QMAKE% %AA%\KeyBackup\KeyBackup.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% KeyBackup.exe

rem
rem ParseWeb
rem

cd %AA%\build\ParseWeb
nmake clean
%QMAKE% %AA%\ParseWeb\ParseWeb.pro -spec %WINSPEC%
nmake
copy release\*.exe %AA%\bin
cd %AA%\bin
%WINDEPLOYQT% ParseWeb.exe

rem
rem Other Files
rem

cd %AA%
copy %OPENSSL% %AA%\bin

