CLS
PING 1.1.1.1 -n 1 -w 1000 >NUL
ECHO/
ECHO  Maybe try MyCSP First?
ECHO/
ECHO  I mean, if everyone suddenly
ECHO  bombards me with messages for
ECHO  help, you can only imagine how
ECHO  little I'd be able to help.
ECHO/
PING 1.1.1.1 -n 1 -w 2000 >NUL
SET /p verify= Don't Care? [y/n]: 
IF /I "%verify%"=="y" (
    PING 1.1.1.1 -n 1 -w 1000 >NUL
    SET /p verify2= Really? [y/n]: 
    IF /I "%verify2%"=="y" GOTO :callhelp
) ELSE (
	CLS
	GOTO :eof
)
:callhelp
ECHO/
ECHO/
PING 1.1.1.1 -n 1 -w 2000 >NUL
ECHO  *sigh*
PING 1.1.1.1 -n 1 -w 1500 >NUL
start /B "C:\Program Files\Internet Explorer\iexplore.exe" "qto://talk/ti530d"
PING 1.1.1.1 -n 1 -w 300 >NUL
GOTO :eof