REM Stored locally on VM to pull latest configuration options script
SetLocal
set homedir="C:\scripts"

REM Creates scripts folder and downloads configoptions script
if EXIST %homedir% (
	curl -L https://raw.githubusercontent.com/lbunge/miwg-cyber-edu/master/configoptions.bat -o "%homedir%\configoptions.bat"
) ELSE (
	md %homedir%
	curl -L https://raw.githubusercontent.com/lbunge/miwg-cyber-edu/master/configoptions.bat -o "%homedir%\configoptions.bat"
)

REM Runs configoptions script, will wait for it to finish
"%homedir%\configoptions.bat"

REM removes script directory to clean up
rm -rf %homedir%

