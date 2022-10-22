@echo off

:: Verificações

	:: Para Firebird 2.5
	:: Verifica a versão do Firebird procurando o arquivo de desinstalação
	if exist C:\"Program Files (x86)"\Firebird\Firebird_2_5\unins000.exe (
		set currentVersion= 2.5
		set arch= x64
		set desinstalador= C:\"Program Files (x86)"\Firebird\Firebird_2_5\unins000.exe
		)
	
	:: Para Firebird 3.0
	:: Verifica a versão do Firebird procurando o arquivo de desinstalação
	if exist C:\"Program Files (x86)"\Firebird\Firebird_3_0\unins000.exe (
		set currentVersion= 3.0
		set arch= x64
		set desinstalador= C:\"Program Files (x86)"\Firebird\Firebird_3_0\unins000.exe
		)
	
:: Variáveis padrão
	:: Diretório de instalação do Firebird
	set caminho= C:\"Program Files (x86)"\Firebird\
	
	:: Diretório de execução do .bat
	set st=%~dp025.exe
	set nd=%~dp030.exe

:: Cores do programa
color 90

:: Limpa a tela pra mostrar somente os menus
cls

:: Menu principal
:menu
	cls
	echo.
	echo.
	echo.
	echo.
	echo.     Versao do Firebird:        %currentVersion%
	echo.                                %arch%
	echo.
	echo     #################################
	echo     #                               #
	echo     #        Menu Principal         #
	echo     #_______________________________#
	echo     #                               #
	echo     #  [ 1 ] Desinstalar Firebird   #
	echo     #                               #
	echo     #  [ 2 ] Instala Firebird       #
	echo     #                               #
	echo     #  [ 9 ] SAIR                   #
	echo     #                               #
	echo     #################################
	echo.
	echo.
	echo.
	echo.
	echo.

set /p opt= Escolha uma Opcao:

if "%opt%" equ "1" goto firebirdRemove
if "%opt%" equ "2" goto installFirebird
if "%opt%" equ "9" goto sair
if "%opt%" GEQ "4" goto wrongoptMenu

:: Tela para opção inválida padrão
:wrongoptMenu
	cls
	echo.
	echo.
	echo.
	echo.
	echo.
	echo     #################################
	echo     #        OPCAO INVALIDA         #
	echo     #       ESCOLHA NOVAMENTE       #
	echo     #################################
	echo.
	echo.
	echo.
	echo.
	echo.
	pause
	goto menu
	
:: Tela para opção inválida padrão
:wrongoptInstall
	cls
	echo.
	echo.
	echo.
	echo.
	echo.
	echo     #################################
	echo     #       VERSAO INCORRETA        #
	echo     #       ESCOLHA NOVAMENTE       #
	echo     #################################
	echo.
	echo.
	echo.
	echo.
	echo.
	pause
	goto installFirebird

:installFirebird
	cls
	echo.
	echo.
	echo.
	echo.
	echo.
	echo     #################################
	echo     #                               #
	echo     #       Instalar Firebird       #
	echo     #_______________________________#
	echo     #                               #
	echo     #  [ 2 ] Firebird 2.5           #
	echo     #                               #
	echo     #  [ 3 ] Firebird 3.0           #
	echo     #                               #
	echo     #  [ 0 ] Menu Principal         #
	echo     #                               #
	echo     #  [ 9 ] SAIR                   #
	echo     #                               #
	echo     #################################
	echo.
	echo.
	echo.
	echo.
	echo.

set /p opt= Escolha uma Opcao:

	if "%opt%" equ "2" start %st%
	if "%opt%" equ "3" start %nd%
	if "%opt%" equ "0" goto menu
	if "%opt%" equ "9" goto sair
	if "%opt%" GEQ "4" goto wrongoptInstall
	if "%opt%" equ "1" goto wrongoptInstall
goto installFirebird

:sair
	cls
	echo.
	echo.
	echo.
	echo.
	echo.
	echo     #################################
	echo     #        SAIR DO PROGRAMA       #
	echo     #################################
	echo.
	echo.
	echo.
	echo.
	echo.
	pause
	exit
	
:firebirdRemove
	cls
		echo [ ] Parando o servico
		echo.
		echo.
		echo.
		echo.
		net stop FirebirdServerDefaultInstance
		pause
	cls
		echo [x] Parando o servico
		echo [ ] Iniciar o desinstalador
		echo.
		echo.
		echo.
		pause
		start %desinstalador%
	cls
		echo [x] Parar o servico
		echo [x] Iniciar o desinstalador
		echo [ ] Excluir a pasta do Firebird
		echo.
		echo.
		pause
		rd /s /q C:\"Program Files (x86)"\Firebird
	goto menu
		
	
	
	