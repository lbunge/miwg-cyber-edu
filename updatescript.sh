#!/bin/bash
homedir="/home/luke/tmp"

if [[ -d $homedir ]]
then
	if [[ ! -d "$homedir/current" ]]
	then	
		git clone "https://github.com/lbunge/miwg-cyber-edu" $homedir
	fi
else
	mkdir $homedir
	git clone "https://github.com/lbunge/miwg-cyber-edu" $homedir
fi


