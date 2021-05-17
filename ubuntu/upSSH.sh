#!/bin/bash
set -x

echo "###########################";
echo "### sh /root/upSSH.sh  ###";
echo "###########################";

service ssh status;
service ssh start;
sleep 20s;
service ssh status;