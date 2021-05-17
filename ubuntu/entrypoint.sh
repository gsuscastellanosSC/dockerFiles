#!/bin/bash
set -x

chmod 500 /var/run/docker.sock
/etc/init.d/ssh start
tail -f /dev/null