@echo off
color 2f
title 皮卡丘证书屏蔽工具
mode con lines=30 cols=50
set targe=''
setlocal enabledelayedexpansion


echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇        皮卡丘证书屏蔽工具      ▇
echo        ▇                                ▇
echo        ▇        ***正在申请权限***      ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo          ***如果提示授权，请点击【是】***         
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"



color 6f
cls
echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇       ***正在获取列表***       ▇
echo        ▇                                ▇
echo        ▇           请耐心等待           ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
%~dp0wget.exe https://github.com/PIKACHUIM/Pika-BAT-App-BanCert/raw/master/getlist/info.ini
mkdir cert
cd cert



for /f   %%i in (..\info.ini)  do (
color 5f
cls
echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇       ***正在下载证书***       ▇
echo        ▇                                ▇
echo        ▇           请耐心等待           ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
set target=%%i
certutil -urlcache -split -f !target!
del /a /f /s /q  "*.crt"
) 
for /R %%s in (.,*.cer) do (
cls
echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇       ***正在执行操作***       ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
certutil -addstore -user -f “Disallowed” %%s
)
cls
echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇       ***成功屏蔽证书***       ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
timeout /t 5

