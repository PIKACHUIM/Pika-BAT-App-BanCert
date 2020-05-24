@echo off
color 3f
title 皮卡丘证书屏蔽工具
mode con lines=20 cols=50
echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇        皮卡丘列表生成工具      ▇
echo        ▇                                ▇
echo        ▇        ***正在生成数据***      ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
cd banlist
dir/b/n/on >..\getlist\info-cdnc.ini
cd ..
cd getlist
(for /f "delims=" %%a in (info-cdnc.ini) do echo https://cdnc-dat.99pika.com/Bancert/%%a)>$
move /y $ info-cdnc.ini
