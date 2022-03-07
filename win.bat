@echo off
title win
mode 33,25
color 0c

:menuwin
cls
echo.
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :  APLICATIVOS DO WINDOWS  :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :   [C]alculadora          :
echo :   [T]eclado virtual      :
echo :   [W]indows explorer     :
echo :   [P]aint                :
echo :   [B]loco de notas       :
echo :   [R]etornar ao menu:    :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo.

set /p op=Digite opcao:
echo.

if /i %op% == C (goto:calc)
if /i %op% == T (goto:osk)
if /i %op% == W (goto:explorer)
if /i %op% == P (goto:paint)
if /i %op% == R (goto:menu) else (
   echo.
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   echo :       Opcao invalida!      :
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   pause
   goto menuwin)
   
:calc
start calc.exe 
goto menuwin

:osk
start osk.exe 
goto menuwin

:menu
call menu.bat 
goto menuwin

:explorer
call explorer.exe
goto menuwin

:paint
call mspaint.exe
goto menuwin
