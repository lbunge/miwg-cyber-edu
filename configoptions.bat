@echo off
cls
SetLocal
set scripts="C:\scripts"
set branch="%scripts%\branch"
echo ----------------------------------------------------------------
echo --                                                            --
echo --             Welcome To MIWG Cyber Education                --
echo --              Please Choose A Lesson Below                  --
echo --                                                            --
echo --            Your VM Will Be Updated Afterwards              --
echo --                                                            --
echo ----------------------------------------------------------------
echo.
echo    1. Test Branch One
echo    2. Test Branch Two
echo    3. Introduction to Powershell
echo.

set /p option="Enter the Lesson #: "

REM Send errors to null, call case entered
2>nul call :case_%option%

REM If error was entered go to default case
if errorlevel 1 call :default_case

REM Final commands
echo ---------------------------------------------------------------
echo --                Your VM is now configured                  --
echo --                     Happy Hunting!                        --
echo ---------------------------------------------------------------       
pause
exit /b

REM Cases being called. Need to have an empty directory to clone into
:case_1
	echo Downloading Branch One
	git clone https://github.com/lbunge/miwg-cyber-edu.git --branch test-branch %branch%
	"%branch%\test-branch-script.bat"
	goto :eof
:case_2
	echo Downloading Branch Two
	git clone https://github.com/lbunge/miwg-cyber-edu.git --branch test-branch-two %branch%
	"%branch%\test-branch-two-script.bat"
	goto :eof
:case_3
	echo case three
	goto :eof
:default_case
	echo default case
	goto :eof
