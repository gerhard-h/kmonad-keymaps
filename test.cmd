kanata --check 2> test.log
IF ERRORLEVEL 1 GOTO Fail
@PowerShell Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('ai')
GOTO :EOF
rem @PowerShell -NoProfile -NoLogo -Command Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('reload will fail')
:Fail
start "kanata error" cmd /k kanata --check
grep help test.log > test.say
@PowerShell Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak((gc "test.say"))
