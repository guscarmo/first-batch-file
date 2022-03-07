@echo off
title win
mode 33,25
color 0c

:menurede
cls
echo.
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :      SERVICOS DE REDE       :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo :   [N]avegar na internet     :
echo :   [T]estar conexao de rede  :
echo :   [O]bter o ip da maquina   :
echo :   [R]etornar ao menu:       :
echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
echo.

set /p op=Digite opcao:
echo.

if /i %op% == N (goto:net)
if /i %op% == T (goto:testrede)
if /i %op% == O (goto:ippc)
if /i %op% == R (goto:menu) else (
   echo.
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   echo :       Opcao invalida!      :
   echo :~~~~~~~~~~~~~~~~~~~~~~~~~~~~:
   pause
   goto menurede)
   
:net
set /p site=Digite o endereco da pagina: 
start %site%
goto menurede

:testrede
set /p testar=Digite o IP da maquina ou endereco web:
ping %testar% -t
goto menurede

:ippc
start ipconfig /all
goto menurede

:menu
call menu.bat
