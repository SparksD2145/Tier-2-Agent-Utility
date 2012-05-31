GOTO logout
:logout
SET /p verify="Are you sure you'd like to log out? [y/n]: "
IF /I "%verify%"=="y" CLS & SHUTDOWN -l 
IF /I "%verify%"=="n" CLS & ECHO "I understand, you declined logging off of the workstation." & PAUSE
ELSE ECHO "I do not understand your input, please try again." & PAUSE & GOTO logout