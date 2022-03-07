@echo off
title tela login
mode 30,20
color 0c
:login

cls
echo.
echo 

echo.
set /p usuario=Digite o usuario:
set /p senha=Digite a senha:



if %usuario% == trex (goto:senha) else (
   echo.
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   echo :     Usuario invalido!      :
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
pause > nul
goto login)

:senha
if /i %senha% == 123 (call menu.bat) else (
   echo.
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   echo :       Senha invalida!      :
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
pause > nul
goto login)