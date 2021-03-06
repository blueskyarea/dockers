#!/bin/bash

# start HMaster
/usr/hdp/current/hbase-master/bin/hbase-daemon.sh start master; sleep 60

# start Region server
/usr/hdp/current/hbase-regionserver/bin/hbase-daemon.sh start regionserver

# start Thrift server
#/usr/hdp/current/hbase-master/bin/hbase-daemon.sh start thrift -p 9090 --infoport 9095

# start REST server
#/usr/hdp/current/hbase-master/bin/hbase-daemon.sh start rest -p 8080 --infoport 8085

# initialize
/usr/hdp/2.6.2.0-205/hbase/bin/hbase shell /init-hbase.txt

