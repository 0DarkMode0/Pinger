@echo off
title Pinger  -  Created By DarkMode
chcp 65001 >nul 2>&1
mode 62,20
color 07
cls
echo.
echo         ██▓███   ██▓ ███▄    █   ▄████ ▓█████  ██▀███  
echo        ▓██░  ██▒▓██▒ ██ ▀█   █  ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒
echo        ▓██░ ██▓▒▒██▒▓██  ▀█ ██▒▒██░▄▄▄░▒███   ▓██ ░▄█ ▒
echo        ▒██▄█▓▒ ▒░██░▓██▒  ▐▌██▒░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄  
echo        ▒██▒ ░  ░░██░▒██░   ▓██░░▒▓███▀▒░▒████▒░██▓ ▒██▒
echo        ▒▓▒░ ░  ░░▓  ░ ▒░   ▒ ▒  ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
echo        ░▒ ░      ▒ ░░ ░░   ░ ▒░  ░   ░  ░ ░  ░  ░▒ ░ ▒░
echo        ░░        ▒ ░   ░   ░ ░ ░ ░   ░    ░     ░░   ░ 
echo                 ░           ░       ░    ░  ░   ░     
chcp 850 >nul 2>&1
echo.
set/p IP=">: "
cls

:Pinger
color 07
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo IP Offline...)
goto Pinger
