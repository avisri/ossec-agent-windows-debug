set PM=Procmon.exe
set SLEEP=%1
start %PM% /accepteula  /LoadConfig ProcmonConfiguration.pmc /BackingFile ossec_events.pml
;;%PM% /waitforidle
;;wait sleep secs
;;ping -n %SLEEP%  127.0.0.1 >nul
sleep %SLEEP%
%PM% /terminate

%PM% /quiet /minimized  /openlog ossec_events.pml /saveas ossec_events.csv
%PM% /terminate

