@echo off
color 3f
title Ƥ����֤�����ι���
mode con lines=20 cols=50
echo.
echo.
echo.
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
echo        �~                                �~
echo        �~        Ƥ�����б����ɹ���      �~
echo        �~                                �~
echo        �~        ***������������***      �~
echo        �~                                �~
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
echo.
echo.
cd banlist
dir/b/n/on >..\getlist\info.ini
cd ..
cd getlist
(for /f "delims=" %%a in (info.ini) do echo https://github.com/PIKACHUIM/Pika-BAT-App-BanCert/raw/master/banlist/%%a)>$
move /y $ info.ini
