@echo off
echo Filename exactly as called: %0
echo Driveletter:                %~d0
echo Path:                       %~p0
echo Filename:                   %~n0
echo Extension:                  %~x0
echo Complete:                   %~d0%~p0%~n0%~x0

rem echo The following will cause this to loop until Ctrl+C is pressed:
rem  %0
call timet.cmd
rem start "" kanata.exe
sleep 10
echo The following will cause this to loop until Ctrl+C is pressed:
%~d0%~p0%~n0%~x0