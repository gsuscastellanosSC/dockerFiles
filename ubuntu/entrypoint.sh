#!/bin/bash
set -x

echo "######################"
echo "*** entrypoint.sh  ***"
echo "######################"

# Funciones
docker() {
    chmod 500 /var/run/docker.sock;
}

# ssh start
ssh(){
    /etc/init.d/ssh start
}

# Ejecución
docker;
ssh;
tail -f /dev/null