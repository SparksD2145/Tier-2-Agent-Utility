@ECHO OFF
SETLOCAL
MODE CON: COLS=43 LINES=68
:::TITLE Tier 2 Agent Control Center [v1.0.1]
TITLE T2ACC [DEV_SPARKS] [v1.1.0a-a140954]
::: -- DEVELOPER, ORIGINAL AUTHOR - NATHAN SMYTH --
::: -- DEVELOPER, MODULAR DEVELOPMENT AND REDEPLOY - THOMAS IBARRA --
::
SET _progdir=%~d0%~p0
SET _cmdstorage=%_progdir%command_index
GOTO start
::
::
:start
CLS
ECHO/
ECHO  Hello, %USERNAME%!
ECHO/
ECHO  ------------- HOW TO USE ----------------
ECHO/
ECHO  In order to use this batch file, you
ECHO  must be on the Volt/Pace/2WIRE network
ECHO  and you must be an agent working for
ECHO  them. Some functions may not work
ECHO  properly if you are not on their network.
ECHO  If you want to do something, use the 
ECHO  corresponding # next to the command.
ECHO/
ECHO  The following script is to be used by
ECHO  T2 Agents only.
ECHO/
ECHO  1 equals can use it on/off network
ECHO  0 equals can only be used on network
ECHO  S equals a sat command
ECHO/
ECHO  COPYRIGHT c 2011-2012 DO NOT REDISTRIBUTE
ECHO/
ECHO  ----------- COMMAND LISTING -------------
ECHO/
CALL :list_cmds
ECHO/
ECHO  -----------------------------------------
ECHO/
SET /p ask= Input command: 
CALL :bat_handler 1 %ask%
GOTO start
:list_cmds
SETLOCAL
PUSHD "%_cmdstorage%"
ECHO  :: Main Commands ::
FOR %%G IN (*.bat) DO PAUSE CALL :bat_handler 0 "%%G"
ECHO/
FOR /d %%G IN (*) DO (
    ECHO  :: %%G ::
    PUSHD %%G
    FOR %%F IN (*.bat) DO (
        CALL :bat_handler 0 "%%F"
    )
    POPD
)
POPD
ENDLOCAL & GOTO :eof
:bat_handler
SETLOCA
IF [%1]==[] (
    CLS
    ECHO Handler Exception:
    ECHO No flag specified.
    ECHO/
    PAUSE 
) ELSE (
    IF [%2]==[] (
        CLS
        ECHO Handler Exception:
        ECHO No file specified.
        ECHO/
        PAUSE
    ) ELSE (
        IF EXIST %2 (
            CLS
            IF %1 == 0 ECHO %~n2
            IF %1 == 1 CALL %2
        ) ELSE (
            CLS
            ECHO Unfortunately, that command is invalid.
            PAUSE
        )
    )
)
ENDLOCAL & GOTO :eof