:: OPEN IN BROWSER EXTENSION
:: Description: Opens files in a browser of choice or just ie
SET _browser_of_choice=extensions\GoogleChromePortable\GoogleChromePortable.exe
IF EXIST %_browser_of_choice% start "browser_of_choice" "%_browser_of_choice%" %1 
IF NOT EXIST %_browser_of_choice% start "ie" "C:\Program Files\Internet Explorer\iexplore.exe" %1