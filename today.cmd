rem disabled
goto :eof
rem (defalias  
rem ;; Last lines of script no leading spaces 
rem dayiso (macro kp2 kp0 kp2 kp3 - kp0 kp1 - kp3 kp0  )  ;; 2023-01-30
rem dayde  (macro kp3 kp0 . kp0 kp1 . kp2 kp0 kp2 kp3  )) ;; 30.01.2023
setlocal
@for /f "tokens=1-3 delims=. " %%a in ('date /T') do @echo %%c-%%b-%%a > todayiso.txt 
@date /T > todayde.txt
grep -E -v "^dayde |^dayiso " kanata.kbd > todayisokanata.txt
sed -r -e "s/([0-9])/kp\1 /g" -e "s/-/- /g"    -e "s/^/dayiso (macro /" -e "s/$/)/" todayiso.txt >> todayisokanata.txt
sed -r -e "s/([0-9])/kp\1 /g" -e "s/\./\. /g"  -e "s/^/dayde  (macro /" -e "s/$/))/" todayde.txt >> todayisokanata.txt
todayisokanata.txt kanata.kbd

grep -E -v "^dayde |^dayiso " kanatauml.kbd > todayisokanata.txt
sed -r -e "s/([0-9])/kp\1 /g" -e "s/-/- /g"    -e "s/^/dayiso (macro /" -e "s/$/)/" todayiso.txt >> todayisokanata.txt
sed -r -e "s/([0-9])/kp\1 /g" -e "s/\./\. /g"  -e "s/^/dayde  (macro /" -e "s/$/))/" todayde.txt >> todayisokanata.txt
rem copy todayisokanata.txt kanatauml.kbd

grep -E -v "^dayde |^dayiso " kanatamine.kbd > todayisokanata.txt
sed -r -e "s/([0-9])/kp\1 /g" -e "s/-/- /g"    -e "s/^/dayiso (macro /" -e "s/$/)/" todayiso.txt >> todayisokanata.txt
sed -r -e "s/([0-9])/kp\1 /g" -e "s/\./\. /g"  -e "s/^/dayde  (macro /" -e "s/$/))/" todayde.txt >> todayisokanata.txt
copy todayisokanata.txt kanatamine.kbd

grep -E -v "^dayde |^dayiso " kanataumlw.kbd > todayisokanata.txt
sed -r -e "s/([0-9])/@n\1 /g" -e "s/-/- /g"    -e "s/^/dayiso (macro /" -e "s/$/)/" todayiso.txt >> todayisokanata.txt
sed -r -e "s/([0-9])/@n\1 /g" -e "s/\./\. /g"  -e "s/^/dayde  (macro /" -e "s/$/))/" todayde.txt >> todayisokanata.txt
copy todayisokanata.txt kanataumlw.kbd