#! /bin/bash
#############################################
# Scripts for delete expire loggs
# Written by toptreegzh
# at 2010-08-04
#############################################

logType=$1
expireDay=$2
dirPath=$3

if [ ${dirPath}x == "x"  ] || [ ${expireDay}x == "x" ] || [ ${logType}x == "x" ];
then
	echo "输入参数有误 1：日志类型 2：保留天数 3：日志路径";
	exit -1;
fi

#运行命令
#find "${dirPath}" -mtime +${expireDay}  -type f -name "${logType}" | xargs rm -rf

#修改测试
find "${dirPath}" -mtime +${expireDay}  -type f -name "${logType}" 

