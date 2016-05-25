#!/bin/bash

echo "${green}Prepare the Environment${reset}"


echo "${green}Prepare the HDFS${reset}"
hadoop fs -rm -r -f $APP/
hadoop fs -mkdir -p $APP/data

hadoop fs -put $DATA_HOME/data/* $APP/data/

echo "${green}Done${reset}"
