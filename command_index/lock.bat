GOTO lock
:lock
CLS
SET /p verify="Are you sure? [y/n]: "
IF /I "%verify%"=="y" CLS & rundll32.exe user32.dll, LockWorkStation
IF /I "%verify%"=="n" CLS & ECHO "I understand, you declined locking the workstation." & PAUSE
ELSE ECHO "I do not understand your input, please try again." & PAUSE & GOTO lock