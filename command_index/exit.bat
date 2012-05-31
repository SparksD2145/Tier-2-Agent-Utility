GOTO close
:close
CLS
SET /p verify="Are you sure you'd like to close T2ACC? [y/n]: "
IF /I "%verify%"=="y" EXIT
IF /I "%verify%"=="n" CLS & ECHO "I understand, you declined exiting T2ACC." & PAUSE
ELSE ECHO "I do not understand your input, please try again." & PAUSE & GOTO close