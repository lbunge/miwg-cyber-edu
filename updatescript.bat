REM Updates script to modify VM
SetLocal
set homedir="C:\scripts"

if EXIST %homedir% (
	curl -L https://raw.githubusercontent.com/lbunge/miwg-cyber-edu/master/options.bat -o "%homedir%\options.bat"
) ELSE (
	md %homedir%
	curl -L https://raw.githubusercontent.com/lbunge/miwg-cyber-edu/master/options.bat -o "%homedir%\options.bat"
)

"%homedir%\current\updateVM.bat"

REM rm -rf %homedir%

