#!/bin/bash
set -x

echo "###########################";
echo "### sh /root/upSSH.sh  ###";
echo "###########################";

service ssh status;
service ssh start;
sleep 10s;
service ssh status;