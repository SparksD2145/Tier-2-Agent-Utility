PING 1.1.1.1 -n 1 -w 500 >NUL
CALL %openbrowser%  "http://phxrptiapp01/agenthome/index.php"
PING 1.1.1.1 -n 1 -w 500 >NUL
start "IE_FOR_INCOMPATIBLE_PROCESSES" "C:\Program Files\Internet Explorer\iexplore.exe" "http://startup.q.att.com/startup/webstart/q.jnlp"
PING 1.1.1.1 -n 1 -w 500 >NUL
start "IE_FOR_INCOMPATIBLE_PROCESSES" "C:\Program Files\Internet Explorer\iexplore.exe" "https://crmp1a.web.att.com/smartclient/CRM/LaunchCrm.jnlp"
PING 1.1.1.1 -n 1 -w 500 >NUL
CALL %openbrowser% "http://mail.microsoftonline.com"
PING 1.1.1.1 -n 1 -w 500 >NUL
CALL %openbrowser% "http://mycsp.cingular.net"
PING 1.1.1.1 -n 1 -w 500 >NUL
START "Notepad" "C:\Program Files\Notepad++\notepad++.exe"