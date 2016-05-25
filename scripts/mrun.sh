#!/bin/bash

runthis() {
	echo "${yellow}	Run${reset}"
	$2 2>&1 | tee $PREFIX/$1.log

	echo "${yellow}	Collect the Output${reset}"
	hadoop fs -cat $APP/output/$1/* 2>&1 | tee $PREFIX/$1.output
}




