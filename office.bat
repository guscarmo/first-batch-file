@echo off
title office
mode 30,20
color 0c


:officemenu
cls
echo.
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :       PACOTE OFFICE       :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :   [W]ord                  :
echo :   [E]xcel                 :
echo :   [A]ccess 	            :
echo :   [P]ower Point	    :
echo :   [R]Retornar ao menu     :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo.

set /p op=Digite opcao:
echo.


if /i %op% == W (goto:word)
if /i %op% == E (goto:excel)
if /i %op% == A (goto:access)
if /i %op% == P (goto:pwrpnt)
if /i %op% == R (goto:menu) else (
   echo.
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   echo :       Opcao invalida!      :
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   pause
   goto officemenu)

:word
start winword.exe
goto officemenu

:excel
start excel.exe
goto officemenu

:access
start msaccess.exe 
goto officemenu

:pwrpnt
start powerpnt.exe 
goto officemenu

:menu
call menu.bat