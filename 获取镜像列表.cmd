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
dir/b/n/on >..\getlist\info-cdnc.ini
cd ..
cd getlist
(for /f "delims=" %%a in (info-cdnc.ini) do echo https://cdnc-dat.99pika.com/Bancert/%%a)>$
move /y $ info-cdnc.ini
