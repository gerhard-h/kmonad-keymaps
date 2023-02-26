@SETLOCAL EnableDelayedExpansion 
@set DT=
@for /f "tokens=1-3 delims=. " %%a in ('date /T') do @set DT=%%c%%b%%a 
@echo ( %DT:~0,1% %DT:~1,1% %DT:~2,1% %DT:~3,1% - %DT:~4,1% %DT:~5,1% - %DT:~6,1% %DT:~7,1% )
