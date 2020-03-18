REM Updates script to modify VM
SetLocal
set homedir="C:\scripts"

if EXIST %homedir% (
	git clone "https://github.com/lbunge/miwg-cyber-edu" %homedir%
) ELSE (
	md %homedir%
	git clone "https://github.com/lbunge/miwg-cyber-edu" %homedir%
)

"%homedir%\current\updateVM.bat"

REM rm -rf %homedir%

