@echo off&mode con lines=3000
rem ��������ļ������jpgͼƬ�ļ����������ļ������ƺ���λ�������������������
set #=Any question&set _=WX&set $=Q&set/az=0x53b7e0b4
title %#% +%$%%$%/%_% %z%
cd /d "%~dp0"
set "folder=."
if not exist "%folder%" (echo;"%folder%" δ�ҵ�&pause&exit)
if "%folder:~,-1%" equ "\" set "folder=%folder:~,-1%"
for /f "delims=" %%a in ('dir /ad /b "%folder%"') do (
    set n=0
    set "fn=%%~nxa"
    for /f "delims=" %%b in ('dir /a-d /b "%folder%\%%~nxa\*.*" 2^>nul') do (
        set /a n+=1
        set "file=%folder%\%%~nxa\%%~nxb"
        setlocal enabledelayedexpansion
        set "newname=00!n!%%~xb"
        if !n! geq 10 if !n! leq 99 (
            set "newname=0!n!%%~xb"
        )
        if !n! geq 100 (
            set "newname=!n!%%~xb"
        )
        echo;"!file!" --^> "!newname!"
        ren "!file!" "!newname!"
        endlocal
    )
)
echo;%#% +%$%%$%/%_% %z%
exit