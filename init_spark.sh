#!/bin/bash
#########################################################################
# Author: lincolnlin
# Created Time: Thu Nov 10 08:05:28 2016
# File Name: init_spark.sh
# Description: 
#########################################################################
set -e 

#安装jdk
yum install -y  java-1.8.0-openjdk

#安装spark
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.1-bin-hadoop2.7.tgz -o spark-2.0.1-bin-hadoop2.7.tgz
tar -xzf spark-2.0.1-bin-hadoop2.7.tgz 
mv spark-2.0.1-bin-hadoop2.7 /home/spark && rm spark-2.0.1-bin-hadoop2.7.tgz -f

# 设置环境变量  可加到~/.bash_profile中
export SPARK_HOME=/home/spark
export PATH=$SPARK_HOME/bin:$PATH
export PYTHONPATH=$SPARK_HOME/python/:$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH

