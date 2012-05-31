:::: DEV NOTE: This file/command will require cleanup; Functionality disabled for now until I get to it.
CLS
ECHO I'm sorry, a developer has disabled this command for corrections.
PAUSE
GOTO: eof
::---- END DISABLED ------
CLS
SET /p verify=Are you sure (command:shutdown)? (y/n)
IF "%verify%"=="y" GOTO shutdown_yes
IF "%verify%"=="Y" GOTO shutdown_yes
IF "%verify%"=="n" GOTO shutdown_no
IF "%verify%"=="N" GOTO shutdown_no
pause
goto start
:shutdown_yes
CLS
ECHO Command not working (DEC-18:NS). 
ECHO This command is broken at this moment 
ECHO Nothing to see here...move along!
::ECHO Shutting the computer down!
::shutdown -f -s
pause
goto start
:shutdown_no
CLS
ECHO Well then...I won't shutdown! xD
pause
goto start