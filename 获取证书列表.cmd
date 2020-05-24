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
dir/b/n/on >..\getlist\info.ini
cd ..
cd getlist
(for /f "delims=" %%a in (info.ini) do echo https://github.com/PIKACHUIM/Pika-BAT-App-BanCert/raw/master/banlist/%%a)>$
move /y $ info.ini
