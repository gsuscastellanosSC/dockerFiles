#!/bin/bash
set -x

chmod 777 /var/run/docker.sock
/etc/init.d/ssh start
tail -f /dev/null