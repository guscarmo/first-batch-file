@echo off
title menu
mode 30,20
color 0c

:menu
cls
echo.
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :       MENU PRINCIPAL       :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :   [P]acote Office          :
echo :   [S]ervicos de rede       :
echo :   [A]plicativos windows    :
echo :   [E]ncerrar sessao        :
echo :   [F]inalizar programa     :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo.

set /p op=Digite opcao:
echo.

if /i %op% == P (goto:office)
if /i %op% == S (goto:rede)
if /i %op% == A (goto:win)
if /i %op% == E (goto:enc)
if /i %op% == F (goto:sair) else (
   echo.
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   echo :       Opcao invalida!      :
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   pause
   goto menu)
   
   
:office
call office.bat

:rede
call rede.bat

:win
call win.bat

:enc
call login.bat

:sair
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == s (exit) else (goto:menu)