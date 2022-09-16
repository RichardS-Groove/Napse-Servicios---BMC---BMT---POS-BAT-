@echo off
color 30
:menu
cls
echo                                           ======================================
echo                                           =                                    =
echo                                           = Detener/Eliminar - Servicios Napse =
echo                                           =                                    =
echo                                           ======================================
echo.
echo.
echo *******************************
echo * By: Richard Campos B.       *
echo * richard.campos@napse.global *
echo *******************************
echo.
echo.

echo  1)   Detener Servicios Central
echo  2)   Iniciar Servicios Central
echo  3)   Detener Servicios Store
echo  4)   Iniciar Servicios Store
echo  5)   Detener Servicios POS
echo  6)   Iniciar Servicios POS
echo  7)   Detener Servicios MongoDB
echo  8)   Iniciar Servicios MongoDB
echo  9)   Detener/Eliminar - Servicios Central 
echo 10)   Detener/Eliminar - Servicios Store
echo 11)   Detener/Eliminar - Servicios POS
echo 12)   Abrir Servicios Windows
echo 13)   IP VM
echo 14)   Salir

echo.
echo.

SET /p var= ^> Seleccione una opcion [1-14]: 

if "%var%"=="0" goto menu
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto op6
if "%var%"=="7" goto op7
if "%var%"=="8" goto op8
if "%var%"=="9" goto op9
if "%var%"=="10" goto op10
if "%var%"=="11" goto op11
if "%var%"=="12" goto op12
if "%var%"=="13" goto op13
if "%var%"=="14" goto salir

::Mensaje de error, validación cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:menu

:op1
    echo.
    echo. Has elegido la opcion No. 1
    echo.
        ::Detener Servicios Central
        color 30
        
    echo Detener Servicios Central
    echo.
        net stop NapseBridgeApi_bridgeCentral
        net stop NapseBridgeApiDirector_bridgeCentral
        net stop NapseBridgeCore_bridgeCentral
        net stop NapseBridgeCoreDirector_bridgeCentral
        net stop NapseBridgeManager_bridgeCentral
        net stop NapseBridgeManagerDirector_bridgeCentral
    pause
    goto:menu

:op2
    echo.
    echo. Has elegido la opcion No. 2
    echo.
        ::Iniciar Servicios Central
        color 30
        
    echo Iniciar Servicios Central
    echo.
        net start NapseBridgeApi_bridgeCentral
        net start NapseBridgeApiDirector_bridgeCentral
        net start NapseBridgeCore_bridgeCentral
        net start NapseBridgeCoreDirector_bridgeCentral
        net start NapseBridgeManager_bridgeCentral
        net start NapseBridgeManagerDirector_bridgeCentral
    pause
    goto:menu

:op3
    echo.
    echo. Has elegido la opcion No. 3
    echo.
        ::Detener Servicios Store
        color 30
        
    echo Detener Servicios Store
    echo.
        net stop NapseBridgeApi_bridgeStore
        net stop NapseBridgeApiDirector_bridgeStore
        net stop NapseBridgeCore_bridgeStore
        net stop NapseBridgeCoreDirector_bridgeStore
        net stop NapseBridgeManager_bridgeStore
        net stop NapseBridgeManagerDirector_bridgeStore
    pause
    goto:menu

:op4
    echo.
    echo. Has elegido la opcion No. 4
    echo.
        ::Iniciar Servicios Store
        color 30
        
    echo Iniciar Servicios Store
    echo.
        net start NapseBridgeApi_bridgeStore
        net start NapseBridgeApiDirector_bridgeStore
        net start NapseBridgeCore_bridgeStore
        net start NapseBridgeCoreDirector_bridgeStore
        net start NapseBridgeManager_bridgeStore
        net start NapseBridgeManagerDirector_bridgeStore
    pause
    goto:menu

:op5
    echo.
    echo. Has elegido la opcion No. 5
    echo.
        ::Detener Servicios POS
        color 30
        
    echo Detener Servicios POS
    echo.
    SET /p t= ^> Ingrese el numero de Tienda: 
    SET /p l= ^> Ingrese el numero de Terminal: 
    echo.
        net stop NapseBridgeApiTerminal_bridgeOffline
        net stop Napse_BridgePosDirector_%t%_%l%
        net stop EmuladorVtol
    pause
    goto:menu

:op6
    echo.
    echo. Has elegido la opcion No. 6
    echo.
        ::Iniciar Servicios POS
        color 30
        
    echo Iniciar Servicios POS
    echo.    
    SET /p t= ^> Ingrese el numero de Tienda: 
    SET /p l= ^> Ingrese el numero de Terminal: 
    echo.
        net start NapseBridgeApiTerminal_bridgeOffline
        net start Napse_BridgePosDirector_%t%_%l%
        net start EmuladorVtol
    pause
    goto:menu

:op7
    echo.
    echo. Has elegido la opcion No. 7
    echo.
        ::Detener Servicios MongoDB
        color 30
        
    echo Detener Servicios MongoDB
    echo.
        net stop MongoDB
    pause
    goto:menu

:op8
    echo.
    echo. Has elegido la opcion No. 8
    echo.
        ::Iniciar Servicios MongoDB
        color 30
        
    echo Iniciar Servicios MongoDB
    echo.
        net start MongoDB
    pause
    goto:menu

:op9
    echo.
    echo. Has elegido la opcion No. 9
    echo.
        ::Detener/Eliminar - Servicios BMC
        color 30
        
    echo Deteniendo Servicios Bridge Central
    echo.
        net stop NapseBridgeApi_bridgeCentral
        net stop NapseBridgeApiDirector_bridgeCentral
        net stop NapseBridgeCore_bridgeCentral
        net stop NapseBridgeCoreDirector_bridgeCentral
        net stop NapseBridgeManager_bridgeCentral
        net stop NapseBridgeManagerDirector_bridgeCentral

    echo Eliminando Servicios Bridge Cantral
    echo.
        sc delete NapseBridgeApi_bridgeCentral
        sc delete NapseBridgeApiDirector_bridgeCentral
        sc delete NapseBridgeCore_bridgeCentral
        sc delete NapseBridgeCoreDirector_bridgeCentral
        sc delete NapseBridgeManager_bridgeCentral
        sc delete NapseBridgeManagerDirector_bridgeCentral
    pause
    goto:menu

:op10
    echo.
    echo. Has elegido la opcion No. 10
    echo.
        ::Detener/Eliminar - Servicios BMT
        color 30
        
    echo Deteniendo Servicios Bridge S
    echo.
        net stop NapseBridgeApi_bridgeStore
        net stop NapseBridgeApiDirector_bridgeStore
        net stop NapseBridgeCore_bridgeStore
        net stop NapseBridgeCoreDirector_bridgeStore
        net stop NapseBridgeManager_bridgeStore
        net stop NapseBridgeManagerDirector_bridgeStore

    echo Comenzamos con eliminar los siguientes servicios:
    echo.
        sc delete NapseBridgeApi_bridgeStore
        sc delete NapseBridgeApiDirector_bridgeStore
        sc delete NapseBridgeCore_bridgeStore
        sc delete NapseBridgeCoreDirector_bridgeStore
        sc delete NapseBridgeManager_bridgeStore
        sc delete NapseBridgeManagerDirector_bridgeStore
    pause
    goto:menu

:op11
    echo.
    echo. Has elegido la opcion No. 11
    echo.
        ::Detener/Eliminar - Servicios POS
        color 30
        
    echo Deteniendo Servicios POS
    echo.
    SET /p t= ^> Ingrese en numero de Tienda: 
    SET /p l= ^> Ingrese en numero de Terminal: 
    echo.
        net stop NapseBridgeApiTerminal_bridgeOffline
        net stop Napse_BridgePosDirector_%t%_%l%
        net stop EmuladorVtol

    echo Comenzamos con eliminar los siguientes servicios:
    echo.
        sc delete NapseBridgeApiTerminal_bridgeOffline
        sc delete Napse_BridgePosDirector_%t%_%l%
        sc delete EmuladorVtol
    pause
    goto:menu


:op12
    echo.
    echo. Has elegido la opcion No. 12
    echo.
        ::Abrir Servicios de Windows
        color 30
        
    echo Iniciando Servicios de Windows
    echo.
        start services.msc
    pause
    goto:menu

:op13
    echo.
    echo. Has elegido la opcion No. 11
    echo.
        ::IP VM
        color 30
        
    echo IP VM
    echo.
        ipconfig
    pause
    goto:menu


:salir
    @cls&exit