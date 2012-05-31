:: DEV NOTE -	This function is now fixed, it will now implement
::				the shutdown command correctly. 
::
::				For Pace, this command should be given the -r flag
::				so that it restarts the computer instead of powering off.
::				Agents should not have to shutdown computers, IT would
::				shut down computers if necessary.  I have changed the
::				command to reflect this. Users have 15 seconds to abort.		
::
::				[TI]
::
:: END DEV NOTE
CLS
SET /p verify="Restart Computer? [y/n]: "
IF "%verify%"=="y" (
	CLS
	SHUTDOWN /r /t 15 /d p:0:0 /c "User Initiated Shutdown."
	ECHO Your workstation will restart in 15 seconds.
	ECHO You may cancel the restart by pressing any key.
	ECHO/
	PAUSE
	SHUTDOWN /a
	CLS
	GOTO :eof
) ELSE (
	CLS
	GOTO :eof
)	