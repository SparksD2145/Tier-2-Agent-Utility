CLS
SET /p verify="Close T2ACC? [y/n]: "
IF /I "%verify%"=="y" (
	EXIT
) ELSE (
	CLS
	GOTO :eof
)