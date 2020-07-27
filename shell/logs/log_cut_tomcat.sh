#! /bin/bash
####################################################
#Scripts for jbossWeb catalina.out cut every day
# test shell
#eg: catalina.out.20100804
#Written by toptreegzh
#at 2010-08-04
####################################################

log_path=$1

if [ ${log_path}x == "x" ] ||  [ ! -f ${log_path} ];
then
	echo "请输入存在的日志文件"
	exit -1
fi

cat ${log_path} > ${log_path}.`date -d today +%Y%m%d`
cat /dev/null > ${log_path}


