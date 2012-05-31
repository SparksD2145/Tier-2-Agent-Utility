::: -- AGENT CONTROL CENTER T2
::: -- CODER COMMENTS --
::: -- UPDATES --
::: -- END UPDATES --
::: -- REVISIONS --
:::    r1 :
:::    
::: -- END REVISIONS --
::: -- URLS --
::: -- http://www.dostips.com/DtCodeSnippets.php for help on codes
::: -- END URLS --
::: -- CREATION INFO --
::: -- LAST UPDATED ON APR 3, 2012 --
::: -- WRITTEN BY NATHAN SMYTH --
::: -- END CREATION INFO --
::: -- END CODER COMMENTS --
@ECHO OFF
TITLE The Agent Control Center T2 v1.0 r1
::: -- Set the window size --
MODE CON: COLS=43 LINES=68
:start
CLS
ECHO/
ECHO  Hello %USERNAME%!
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
ECHO   The following script is to be used by a
ECHO   T2 Agents only.
ECHO/
ECHO  1 equals can use it on/off network
ECHO  0 equals can only be used on network
ECHO  S equals a sat command
ECHO/
ECHO      Changelog has been updated as of
ECHO                  4/3/12
ECHO      Please see this file in notepad++
ECHO            for more information
ECHO/
ECHO      COPYRIGHT c 2011-2012 DO NOT COPY
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
SET /p ask= Input command code?
IF "%ask%"=="S" GOTO LAUNCHALL
IF "%ask%"=="1" GOTO bbnms
IF "%ask%"=="2" GOTO binarycalculator
IF "%ask%"=="3" GOTO bingsomeillusions
IF "%ask%"=="4" GOTO calltimer
IF "%ask%"=="5" GOTO eggtimertool
IF "%ask%"=="6" GOTO howamidoing
IF "%ask%"=="7" GOTO lock
IF "%ask%"=="8" GOTO logoff
IF "%ask%"=="9" GOTO nyancatfun
IF "%ask%"=="10" GOTO opengoogle
IF "%ask%"=="11" GOTO opennetworkoverload
IF "%ask%"=="12" GOTO openmail
IF "%ask%"=="13" GOTO openmycsp
IF "%ask%"=="14" GOTO runah
IF "%ask%"=="15" GOTO runie
IF "%ask%"=="16" GOTO scorecard
IF "%ask%"=="17" GOTO shutdown
IF "%ask%"=="18" GOTO smartchat
IF "%ask%"=="19" GOTO spp
IF "%ask%"=="10" GOTO startcalc
IF "%ask%"=="21" GOTO startcrm
IF "%ask%"=="22" GOTO startcontacthelpdotcom
IF "%ask%"=="23" GOTO starteightball
IF "%ask%"=="24" GOTO exit
IF "%ask%"=="s1" GOTO pendingdispatch
IF "%ask%"=="s2" GOTO launchcms
IF "%ask%"=="s3" GOTO launchg2ls
IF "%ask%"=="s4" GOTO launchscanr
IF "%ask%"=="s5" GOTO launchubbt
IF "%ask%"=="s6" GOTO launchusdott
ELSE GOTO wrongcode
::-----inside commands---------------------------
::-----------------------------------------------
:wrongcode
CLS
ECHO You have entered an invalid code
pause
CLS
GOTO start
::-----------------------------------------------
::-----end inside commands-----------------------

::--START COMMAND CODING HERE--------------------
::--SUDO COMMAND---------------------------------
:LAUNCHALL
CLS
ECHO Launching all your tools!
ECHO/
ECHO Launching Agent Homepage!
set website=http://phxrptiapp01/agenthome/index.php
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching Call Timer!
set website=\\satstorage01\teams_shared\Team Lynch\ACallTimer.exe
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching ContactHelp.com!
set website=http://www.contacthelp.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching CRM/Clarify!
set website=https://crmp1a.web.att.com/smartclient/CRM/LaunchCrm.jnlp
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%
ECHO Launching Mail box at Microsoft Online!
set website=http://mail.microsoftonline.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching Mid-Day Performance in IE!
set website=http://cctools/mdp/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching MyCSP!
set website=http://mycsp.cingular.net
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching Network Overload!
set website=http://www.networkoverload.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching The Scorecard!
set website=http://phxrptiapp01/uvportal/main.php?p=scorecard
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
ECHO Launching Your Agent Homepage!
set website=http://phxrptiapp01/agenthome/index.php
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
GOTO start
::--END SUDO COMMANDS----------------------------
:bbnms
CLS
ECHO Launching BBNMS!
set website=http://bbnms-ls.it.att.com/lswebclient/home/swf/home.jsp#
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:binarycalculator
CLS
ECHO Binary Calculator is opening up!
set website=http://home.paulschou.net/tools/xlate/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:bingsomeillusions
CLS
ECHO Binging some cool illusions!
set website=http://www.bing.com/images/search?q=Illusion+Wallpaper
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:calltimer
CLS
ECHO Launching Call Timer!
set website=\\satstorage01\teams_shared\Team Lynch\ACallTimer.exe
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:eggtimertool
CLS
ECHO Launching Egg Timer Tool!
set website=http://uvsemtools1c.rcsntx.sbcglobal.net/oma/ett/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:howamidoing
CLS
ECHO Launching Mid-Day Performance in IE!
set website=http://cctools/mdp/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:lock
CLS
SET /p verify=Are you sure (command:lock)? (y/n)
IF "%verify%"=="y" GOTO lock_yes
IF "%verify%"=="Y" GOTO lock_yes
IF "%verify%"=="n" GOTO lock_no
IF "%verify%"=="N" GOTO lock_no
pause
goto start
:lock_yes
CLS
rundll32.exe user32.dll, LockWorkStation
goto start
:lock_no
CLS
ECHO Okay, I have not locked the workstation...:)
pause
goto start
:logoff
CLS
SET /p verify=Are you sure (command:logff)? (y/n)
IF "%verify%"=="y" GOTO logoff_yes
IF "%verify%"=="Y" GOTO logoff_yes
IF "%verify%"=="n" GOTO logoff_no
IF "%verify%"=="N" GOTO logoff_no
pause
goto start
:logoff_yes
CLS
ECHO logging you off!
shutdown -l
pause
goto start
:logoff_no
CLS
ECHO Alrighty then, I won't...:P
pause
goto start
:nyancatfun
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
goto start
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
goto start
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
goto start
:nyancatfun_no
CLS
ECHO You must acknowledge the terms before
ECHO using this function...
pause
goto start
:opengoogle
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
goto start
:opengoogle_yes
CLS
ECHO You have opened up Google!
set website=http://www.google.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:opengoogle_no
CLS
ECHO You must acknowledge the terms before
ECHO using this function...
pause
goto start
:opennetworkoverload
CLS
ECHO You have opened up Network Overload!
set website=http://www.networkoverload.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:openmail
CLS
ECHO You have opened up your mail box at Microsoft Online!
set website=http://mail.microsoftonline.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:openmycsp
CLS
ECHO You have opened up MyCSP!
set website=http://mycsp.cingular.net
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:runah
CLS
ECHO You have opened up your Agent Homepage!
set website=http://phxrptiapp01/agenthome/index.php
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:runie
CLS
ECHO You have opened up Internet Explorer!
set website=http://www.thecreationbuzz.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:scorecard
CLS
ECHO You have opened up the Scorecard!
set website=http://phxrptiapp01/uvportal/main.php?p=scorecard
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:shutdown
CLS
SET /p verify=Are you sure (command:shutdown)? (y/n)
IF "%verify%"=="y" GOTO shutdown_yes
IF "%verify%"=="Y" GOTO shutdown_yes
IF "%verify%"=="n" GOTO shutdown_no
IF "%verify%"=="N" GOTO shutdown_no
pause
goto start
:shutdown_yes
CLS
ECHO Command not working (DEC-18:NS). 
ECHO This command is broken at this moment 
ECHO Nothing to see here...move along!
::ECHO Shutting the computer down!
::shutdown -f -s
pause
goto start
:shutdown_no
CLS
ECHO Well then...I won't shutdown! xD
pause
goto start
:smartchat
CLS
ECHO You have opened up Smart Chat!
set website=https://smartchat-sfdc.web.att.com/SMARTChatHome/home
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:spp
CLS
ECHO You have opened up SPP!
set website=http://spp.web.att.com/spp/ui/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:startcalc
CLS
ECHO Now starting The Calculator!
"C:\WINDOWS\system32\calc.exe"
goto start
:startcrm
CLS
ECHO Now starting CRM/Clarify!
set website=https://crmp1a.web.att.com/smartclient/CRM/LaunchCrm.jnlp
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:startcontacthelpdotcom
CLS
::ECHO This website has now been blocked on the 
::ECHO network. Because of this we can no longer
::ECHO support this function. 
ECHO Now starting ContactHelp.com!
set website=http://www.contacthelp.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
pause
goto start
:starteightball
CLS
ECHO Now starting Eightball!
set website=qto://talk/eightball@q.att.com
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:exit
CLS
SET /p verify=Are you sure (command:exit)? (y/n)
IF "%verify%"=="y" GOTO exit_yes
IF "%verify%"=="Y" GOTO exit_yes
IF "%verify%"=="n" GOTO exit_no
IF "%verify%"=="N" GOTO exit_no
pause
goto start
:exit_yes
exit
:exit_no
CLS
ECHO Okay...I won't close! :)
pause
goto start
::--START SATURDAY COMMANDS-------------------------------------------
:launchcms
CLS
ECHO Now starting Standalone CMS!
set website=http://cms.c01.sbcglobal.net
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:launchg2ls
CLS
ECHO Now starting G2 LS Tool!
set website=https://g2.sbcglobal.net
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:launchscanr
CLS
ECHO Now starting Standalone SCANR!
set website=https://scanr-g.it.att.com/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:launchubbt
CLS
ECHO Now starting UBBT!
set website=http://lsbbt.sbc.com/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:launchusdott
CLS
ECHO Now starting USDOTT!
set website=http://ebizweb3.att.com/usdott/
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
:pendingdispatch
CLS
ECHO Now starting Pending Dispatch!
set website=http://phxrptiapp01/pendingdispatch/PendingDispatch.html
start "C:\Program Files\Internet Explorer\iexplore.exe" "%website%"
goto start
::--END SATURDAY COMMANDS-----------------------------------------------
::--END COMMAND CODING HERE--------------------