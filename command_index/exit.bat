:::: DEV NOTE: This file/command will require cleanup; Functionality disabled for now until I get to it.
EXIT
::---- END DISABLED ------
CLS
SET /p verify=Are you sure (command:exit)? (y/n)
IF "%verify%"=="y" GOTO exit_yes
IF "%verify%"=="Y" GOTO exit_yes
IF "%verify%"=="n" GOTO exit_no
IF "%verify%"=="N" GOTO exit_no
pause
:exit_yes
exit
:exit_no
CLS
ECHO Okay...I won't close! :)
pause