#! /bin/bash
####################################################
#处理日志
#author:gaozhonghui
#date:2010-08-04
####################################################

##切割日志
/bin/sh /web/shell/log_cut_tomcat.sh /web/webserver/tomcat/call.hujiao.com/logs/catalina.out
/bin/sh /web/shell/log_cut_tomcat.sh /web/webserver/tomcat/call.hujiao.com2/logs/catalina.out

/bin/sh /web/shell/log_cut_tomcat.sh /web/webserver/tengine/logs/access.call.hujiao.com.log
/bin/sh /web/shell/log_cut_tomcat.sh /web/webserver/tengine/logs/error.call.hujiao.com.log



##删除过期日志
/bin/sh /web/shell/log_del_expire.sh  catalina.out.* 15 /web/webserver/tomcat/call.hujiao.com/logs
/bin/sh /web/shell/log_del_expire.sh  catalina.out.* 15 /web/webserver/tomcat/call.hujiao.com2/logs

/bin/sh /web/shell/log_del_expire.sh  access.call.hujiao.com.log.* 15 /web/webserver/tengine/logs
/bin/sh /web/shell/log_del_expire.sh  error.call.hujiao.com.log.* 15 /web/webserver/tengine/logs
