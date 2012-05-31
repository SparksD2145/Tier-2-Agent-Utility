:::: DEV NOTE: This file/command will require massive cleanup; Functionality disabled for now until I get to it.
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
SET /p akncf=Do you agree to these terms? (y/n)
IF "%akncf%"=="y" GOTO nyancatfun_yes
IF "%akncf%"=="Y" GOTO nyancatfun_yes
IF "%akncf%"=="n" GOTO nyancatfun_no
IF "%akncf%"=="N" GOTO nyancatfun_no
pause
:nyancatfun_yes
::: ---------- NYANCATFUN Revisions -----------
::: r1 :
::: STARTED IT
::: 
::: r2 :
::: ADDED THE BACK FUNCTION
::: CLEANED THE INTERFACE UP
:::
::: r3 :
::: CHANGED what do you want to do TO Input Option=
:::
::: r4 :
::: CHANGED THE SPACING UP
::: ADDED THE def CATCH COMMAND AND CHANGED THE WAY CATCH COMMANDS WORK
::: CLEANED UP THE SIDES OF THE TEXT PARAGRAPHS
::: SPACED OUT TEXT AND CLEANED IT UP :)
::: 
:::
::: -------------------------------------------
CLS
ECHO/
ECHO     NYANCATFUN v1.0.2 r4 BATCH CONSOLE
ECHO/
ECHO  -----------------------------------------
ECHO/
ECHO           CREATED BY NATHAN SMYTH
ECHO           BASED OFF OF NYANIT.COM
ECHO/
ECHO  -----------------------------------------
ECHO/
ECHO  NYANCATFUN is a batch file console that 
ECHO  you can use to goto any website and put 
ECHO  nyanit on it.
ECHO/
ECHO  What is nyanit? A website that uses 
ECHO  web technology to overlay it's contents
ECHO  of Nyan Cat moving around the screen in 
ECHO  random places onto any website you want.
ECHO/
ECHO  Optionally, you can click the Nyan cat's.
ECHO/
ECHO  -------------- HOW TO USE ---------------
ECHO/
ECHO  STEP 1: Choose an option below
ECHO/
ECHO  STEP 2: If you select "Enter website", 
ECHO  you will be prompted on a console page 
ECHO  to enter a website to put nyanit.com 
ECHO  onto.
ECHO/
ECHO  STEP 3: A window (IE) will open up and
ECHO  it display the nyanit.com website with 
ECHO  your request.
ECHO/
ECHO  STEP 4: ENJOY!
ECHO/
ECHO  ---------------- OPTIONS ----------------
ECHO/
ECHO             1. Enter website
ECHO             2. Quit
ECHO/
set /p ncf_ask= Input Option=
IF "%ncf_ask%"=="1" GOTO nyancatfun_yes_enterwebsite
IF "%ncf_ask%"=="2" GOTO nyancatfun_yes_quit
ELSE goto ncf_wrongcode
::: --------------------------------------------
:ncf_wrongcode
CLS
ECHO You have entered an invalid code
pause
CLS
GOTO nyancatfun_yes
::: --------------------------------------------
pause
:nyancatfun_yes_enterwebsite
CLS
set ncf_website=""
ECHO/
ECHO     NYANCATFUN v1.0.2 r4 BATCH CONSOLE
ECHO/
ECHO  -----------------------------------------
ECHO/
ECHO           CREATED BY NATHAN SMYTH
ECHO           BASED OFF OF NYANIT.COM
ECHO/
ECHO  ------------- ENTER WEBSITE -------------
ECHO/
ECHO  Just to let everyone know, the way this 
ECHO  will work correctly is to input the 
ECHO  website by typing in the website 
ECHO  domain with the .com, .net, .org, etc.
ECHO/
ECHO  Then type a "/" after it (just cause) and 
ECHO  do NOT add the "http://" before the
ECHO  domain or else you will break it! :P
ECHO/
ECHO  And you can add "www" to the beginning of
ECHO  the domain if you want (it's optional)
ECHO  and it won't break it! Also, if you want, 
ECHO  you can also type in "back" into the
ECHO  place where you can type below to go back
ECHO  to the NYANCATFUN Console. :)
ECHO/
ECHO  THE EXAMPLE : purple.com/
ECHO/
ECHO  ------------ CATCH COMMANDS -------------
ECHO  TYPE "back" =
ECHO  TO GO BACK TO NYANCATFUN'S CONSOLE
ECHO/
ECHO  TYPE "def" =
ECHO  TO USE THE DEFAULT WEBSITE "PURPLE.COM"
ECHO/
ECHO  I want have fun with:
SET /p ncf_website= http://
::: THIS IS A CATCH STATEMENT PRETTY MUCH. IT
::: WILL FORCE ITSELF TO SEE IF THE WEBSITE
::: ENTER IS A COMMAND TO GO BACK.
:::back catch statement
IF "%ncf_website%"=="back" GOTO nyancatfun_yes
IF "%ncf_website%"=="BACK" GOTO nyancatfun_yes
IF "%ncf_website%"=="wback" GOTO nyancatfun_yes
IF "%ncf_website%"=="WBACK" GOTO nyancatfun_yes
IF "%ncf_website%"=="wwback" GOTO nyancatfun_yes
IF "%ncf_website%"=="WWBACK" GOTO nyancatfun_yes
IF "%ncf_website%"=="wwwback" GOTO nyancatfun_yes
IF "%ncf_website%"=="WWWBACK" GOTO nyancatfun_yes
IF "%ncf_website%"=="w.back" GOTO nyancatfun_yes
IF "%ncf_website%"=="W.BACK" GOTO nyancatfun_yes
IF "%ncf_website%"=="ww.back" GOTO nyancatfun_yes
IF "%ncf_website%"=="WW.BACK" GOTO nyancatfun_yes
IF "%ncf_website%"=="www.back" GOTO nyancatfun_yes
IF "%ncf_website%"=="WWW.BACK" GOTO nyancatfun_yes
:::def catch statement
IF "%ncf_website%"=="def" set ncf_website=purple.com
set website=http://nyanit.com/"%ncf_website%"
ECHO Have fun at http://%ncf_website%!!!
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto nyancatfun_yes_enterwebsite
:nyancatfun_yes_quit
CLS
ECHO I will now return you to the main console
pause
:nyancatfun_no
CLS
ECHO You must acknowledge the terms before
ECHO using this function...
pause