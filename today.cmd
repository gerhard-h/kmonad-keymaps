setlocal
@for /f "tokens=1-3 delims=. " %%a in ('date /T') do set ADATE=%%c-%%b-%%a
@echo %ADATE% > todayiso.txt
@date /T > todayde.txt
 grep -E -v "dayde |dayiso " kanata.kbd > todayisokanata.txt
 sed -r -e "s/([0-9])/kp\1 /g" -e "s/-/- /g"    -e "s/^/dayiso (macro /" -e "s/$/)/" todayiso.txt >> todayisokanata.txt
 sed -r -e "s/([0-9])/kp\1 /g" -e "s/\./\. /g"  -e "s/^/dayde  (macro /" -e "s/$/))/" todayde.txt >> todayisokanata.txt
 copy todayisokanata.txt kanata.kbd