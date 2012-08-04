SET _chrome=extensions\AeroSnapPortable\AeroSnap.exe
IF EXIST %_chrome% start "chrome" "%_chrome%" %1 
IF NOT EXIST %_chrome% (
    ECHO/
    ECHO  Unfortunately, you do not have
    ECHO  AeroSnap installed. :(
    ECHO/
    PING 1.1.1.1 -n 1 -w 3000 >NUL
)