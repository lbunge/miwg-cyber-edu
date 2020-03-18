@echo off
cls
SetLocal
echo ----------------------------------------------------------------
echo --                                                            --
echo --             Welcome To MIWG Cyber Education                --
echo --              Please Choose A Lesson Below                  --
echo --                                                            --
echo --            Your VM Will Be Updated Afterwards              --
echo --                                                            --
echo ----------------------------------------------------------------
echo.
echo    1. Introduction to Windows OS
echo    2. Introduction to the Command Line
echo    3. Introduction to Powershell
echo.

set /p option="Enter the Lesson #: "

REM Send errors to null, call case entered
2>nul call :case_%option%

REM If error was entered go to default case
if errorlevel 1 call :default_case

REM Final commands
echo done
pause
exit /b

REM Cases being called
:case_1
	echo case one
	goto :eof
:case_2
	echo case two
	goto :eof
:case_3
	echo case three
	goto :eof
:default_case
	echo default case
	goto :eof
