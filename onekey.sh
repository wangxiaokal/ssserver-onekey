#!/bin/bash

cp librehat-shadowsocks-epel-7.repo /etc/yum.repos.d/

yum install epel-release -y
yum install shadowsocks-libev -y

nohup ss-server -c ss_config.json --plugin gq-server-linux-amd64-1.2.2 --plugin-opts gq_config.json > ss.log 2>&1 &
