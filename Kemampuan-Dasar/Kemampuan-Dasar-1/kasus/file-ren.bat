@echo Off
title belajar cmd
:awal
cls
echo NAMA-FILE.JAVA ADAAAA
echo.---------------------------------------------------
echo Apakah namanya akan diganti ? (iya/tidak)
set/p "input=Masukan Option:"
if %input%==iya goto ganti
if %input%==tidak goto lanjut berikutnya
cls
:ganti
echo ganti sendiri yah :D
pause
goto awal
cls
:lanjut berikutnya
echo terimahkasih :D
pause
cls
exit