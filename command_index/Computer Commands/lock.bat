CLS
SET /p verify="Lock Workstation? [y/n]: "
IF /I "%verify%"=="y" (
	rundll32.exe user32.dll, LockWorkStation
) ELSE (
	CLS
	GOTO :eof
)