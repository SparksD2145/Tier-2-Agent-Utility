@ECHO OFF
SETLOCAL
MODE CON: COLS=43 LINES=79
TITLE Tier 2 Agent Utility [v2.4.0dev]
::: -- DEVELOPER, ORIGINAL AUTHOR - NATHAN SMYTH --
::: -- DEVELOPER, MODULAR DEVELOPMENT AND REDEPLOY - THOMAS IBARRA --
::: DO NOT MODIFY THESE SYSTEM VARS :::
::: SYSTEM VARS
SET _progdir=%~d0%~p0
SET _cmdstorage=%_progdir%command_index
SET _systemdir=%_progdir%system
SET _extensiondir=%_progdir%extensions
SET _count=1
SET _pnumber=-1
::EXTENSIONS - MODIFY AS NEEDED :)
SET openbrowser="%_systemdir%\open_in_browser.bat"
:: DON'T MODIFY BELOW
GOTO start
::::::::::
:start
CLS
ECHO/
ECHO  --------- Tier 2 Agent Utility ----------
ECHO/
ECHO   - For all of your app launching needs -
ECHO   - Built, developed and tested: TI530D -
ECHO/
CALL :list_cmds
ECHO/
ECHO  -----------------------------------------
ECHO/
SET /p _ask= Input command: 
SET ask=%_ask:!=%
CALL :bat_handler 1 %ask%
GOTO start
:list_cmds
SETLOCAL
PUSHD "%_cmdstorage%"
ECHO  :: Main Commands ::
FOR %%G IN (*.bat) DO (
   CALL :bat_handler 0 "%%G"
)
FOR /d %%G IN (*) DO (
    ECHO/
    ECHO  :: %%G ::
    PUSHD %%G
    FOR %%F IN (*.bat) DO (
        CALL :bat_handler 0 "%%F"
    )
    POPD 
)
POPD
ECHO/
ECHO  :: Extensions ::
PUSHD "%_extensiondir%"
FOR /r %%F IN (*.bat) DO (
    CALL :bat_handler 0 "%%F" 
)
POPD
ENDLOCAL & SET (_count=1) & GOTO :eof
:bat_handler
IF [%1]==[] (
    CLS1
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
        IF %1==0 (
            SET /A _count+=1
            ECHO   %_count%.	%~n2
        )
        IF %1==1 (
            FOR /r %%P IN (*.bat) DO (
                CALL :determine_program "%2" "%%P"
                IF /I "%%~nP" EQU "%2" ( CALL "%%P" )
            )
        )
    )
)
SET _pnumber=-1
GOTO :eof
:determine_program
CALL SET /A _pnumber+=1
IF "%_pnumber%" EQU %1 CALL %2
goto :eof