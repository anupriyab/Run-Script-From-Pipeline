@echo off
setlocal enabledelayedexpansion

REM Get the number of terms from the command line argument or default to 10
if "%~1"=="" (
    set N=10
) else (
    set N=%1
)

REM Initialize the first two Fibonacci numbers
set a=0
set b=1

echo The Fibonacci series is:

REM Loop to calculate the Fibonacci sequence
for /L %%i in (0,1,%N%) do (
    echo %%i    !a!
    set /a fn=!a!+!b!
    set a=!b!
    set b=!fn!
)

endlocal
