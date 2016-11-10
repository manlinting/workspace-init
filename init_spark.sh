#!/bin/bash
#########################################################################
# Author: lincolnlin
# Created Time: Thu Nov 10 08:05:28 2016
# File Name: init_spark.sh
# Description: 
#########################################################################
set -e 

wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.1-bin-hadoop2.7.tgz -o spark-2.0.1-bin-hadoop2.7.tgz
tar -xzf spark-2.0.1-bin-hadoop2.7.tgz 
mv spark-2.0.1-bin-hadoop2.7 /home/spark && rm spark-2.0.1-bin-hadoop2.7.tgz -f

export SPARK_HOME=/home/spark
export PATH=$SPARK_HOME/bin:$PATH

yum install -y  java-1.8.0-openjdk
