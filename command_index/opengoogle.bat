:::: DEV NOTE: This file/command will require cleanup; Functionality disabled for now until I get to it.
CLS
ECHO I'm sorry, a developer has disabled this command for corrections.
PAUSE
GOTO :eof
::---- END DISABLED ------
CLS
ECHO By going to this website, you agree that
ECHO you are solely responsible for the 
ECHO activity you do on this site and the 
ECHO creator is NOT responsible if you get
ECHO in trouble for using this website. On
ECHO that note, you agree that you will use
ECHO this site while you are NOT on a call
ECHO or while you are NOT doing something that 
ECHO requires your full attention.
SET /p ak=Do you agree to these terms? (y/n)
IF "%ak%"=="y" GOTO opengoogle_yes
IF "%ak%"=="Y" GOTO opengoogle_yes
IF "%ak%"=="n" GOTO opengoogle_no
IF "%ak%"=="N" GOTO opengoogle_no
pause
:opengoogle_yes
CLS
ECHO You have opened up Google!
set website=http://www.google.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
:opengoogle_no
CLS
ECHO You must acknowledge the terms before
ECHO using this function...
pause