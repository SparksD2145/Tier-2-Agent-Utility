@ECHO OFF
SETLOCAL
MODE CON: COLS=43 LINES=68
TITLE Tier 2 Agent Control Center [v1.0.1]
::: -- DEVELOPER, ORIGINAL AUTHOR - NATHAN SMYTH --
::: -- DEVELOPER, MODULAR DEVELOPMENT AND REDEPLOY - THOMAS IBARRA --
:start
CLS
ECHO/
ECHO  Hello, %USERNAME%!
ECHO/
ECHO  ------------- HOW TO USE ----------------
ECHO/
ECHO  In order to use this batch file, you
ECHO  must be on the Volt/Pace/2WIRE network
ECHO  and you must be an agent working for
ECHO  them. Some functions may not work
ECHO  properly if you are not on their network.
ECHO  If you want to do something, use the 
ECHO  corresponding # next to the command.
ECHO/
ECHO  The following script is to be used by
ECHO  T2 Agents only.
ECHO/
ECHO  1 equals can use it on/off network
ECHO  0 equals can only be used on network
ECHO  S equals a sat command
ECHO/
ECHO  COPYRIGHT c 2011-2012 DO NOT REDISTRIBUTE
ECHO/
ECHO  ---------- LIST OF COMMANDS -------------
ECHO/
ECHO  S. SUDO LAUNCH (launches all stuff)
ECHO  1. BBNMS (0)
ECHO  2. BINARY CALCULATOR (1)
ECHO  3. BING SOME AMAZING ILLUSIONS (1)
ECHO  4. CALL TIMER (0)
ECHO  5. EGG TIMER TOOL (0)
ECHO  6. HOW AM I DOING SO FAR? (0)
ECHO  7. LOCK COMPUTER (1)(S)
ECHO  8. LOGOFF COMPUTER (1)(S)
ECHO  9. NYANCAT FUN!!!! (1)
ECHO  10. OPEN GOOGLE (1)
ECHO  11. OPEN NETWORKOVERLOAD.COM (1)
ECHO  12. OPEN MAIL (1)
ECHO  13. OPEN MYCSP (1)
ECHO  14. RUN AGENT HOMEPAGE (1)
ECHO  15. RUN IE (1)
ECHO  16. SCORECARD (NOT PERSONAL)(1)
ECHO  17. SHUTDOWN COMPUTER (1)(S)
ECHO  18. SMARTCHAT (0)
ECHO  19. SPP (0)
ECHO  20. START CALCULATOR (1)
ECHO  21. START CRM/CLARIFY (0)
ECHO  22. START CONTACTHELP.COM (1)
ECHO  23. START EIGHTBALL (FUN) (0)
ECHO  24. EXIT (1)(S)
ECHO/
ECHO  ------ FOR USE ON SAT AFTER 11PM --------
ECHO/
ECHO  s1. IF USDOTT FAILS, USE PENDING DISPATCH
ECHO  s2. LAUNCH CMS
ECHO  s3. LAUNCH G2 LS TOOL
ECHO  s4. LAUNCH SCANR
ECHO  s5. LAUNCH UBBT
ECHO  s6. LAUNCH USDOTT (CRM REPLACEMENT)
ECHO/
ECHO  -----------------------------------------
ECHO/
SET /p ask="Input command code: "
CALL :handle_cmd %ask%
GOTO start
::: DEV NOTE: NEW HANDLER SUBR -------------------------------
:handle_cmd
SETLOCAL
IF DEFINED %1% {
	IF /I "%1%" == "S" SET _requestedcmd="sudo"
	IF /I "%1%" == "1" SET _requestedcmd="bbnms"
	IF /I "%1%" == "2" SET _requestedcmd="binarycalculator"
	IF /I "%1%" == "3" SET _requestedcmd="bingsomeillusions"
	IF /I "%1%" == "4" SET _requestedcmd="calltimer"
	IF /I "%1%" == "5" SET _requestedcmd="eggtimertool"
	IF /I "%1%" == "6" SET _requestedcmd="howamidoing"
	IF /I "%1%" == "7" SET _requestedcmd="lock"
	IF /I "%1%" == "8" SET _requestedcmd="logoff"
	IF /I "%1%" == "9" SET _requestedcmd="nyancatfun"
	IF /I "%1%" == "10" SET _requestedcmd="opengoogle"
	IF /I "%1%" == "11" SET _requestedcmd="opennetworkoverload"
	IF /I "%1%" == "12" SET _requestedcmd="openmail"
	IF /I "%1%" == "13" SET _requestedcmd="openmycsp"
	IF /I "%1%" == "14" SET _requestedcmd="runah"
	IF /I "%1%" == "15" SET _requestedcmd="runie"
	IF /I "%1%" == "16" SET _requestedcmd="scorecard"
	IF /I "%1%" == "17" SET _requestedcmd="shutdown"
	IF /I "%1%" == "18" SET _requestedcmd="smartchat"
	IF /I "%1%" == "19" SET _requestedcmd="spp"
	IF /I "%1%" == "20" SET _requestedcmd="startcalc"
	IF /I "%1%" == "21" SET _requestedcmd="startcrm"
	IF /I "%1%" == "22" SET _requestedcmd="startcontacthelpdotcom"
	IF /I "%1%" == "23" SET _requestedcmd="starteightball"
	IF /I "%1%" == "24" SET _requestedcmd="exit"
	IF /I "%1%" == "s1" SET _requestedcmd="pendingdispatch"
	IF /I "%1%" == "s2" SET _requestedcmd="launchcms"
	IF /I "%1%" == "s3" SET _requestedcmd="launchg2ls"
	IF /I "%1%" == "s4" SET _requestedcmd="launchscanr"
	IF /I "%1%" == "s5" SET _requestedcmd="launchubbt"
	IF /I "%1%" == "s6" SET _requestedcmd="launchusdott"
	IF DEFINED %_requestedcmd& SET _filehandle="%~dp0\command_index\%_requestedcmd%.bat"
	IF EXIST %_filehandle% (
		CLS 
		CALL %_filehandle%
	) ELSE (
		CLS
		ECHO Unfortunately, that command is invalid.
		PAUSE
	)
	GOTO :eof
} ELSE {
	CLS
	ECHO The command you entered is invalid.
	PAUSE
	GOTO :eof
}
ENDLOCAL