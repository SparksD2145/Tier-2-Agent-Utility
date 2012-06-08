CLS
SET /p verify="Log out? [y/n]: "
IF /I "%verify%"=="y" (
	SHUTDOWN -l
) ELSE ( 
	CLS
	GOTO :eof
)