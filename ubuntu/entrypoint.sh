#!/bin/bash
set -x

echo "######################";
echo "### entrypoint.sh  ###";
echo "######################";

# Funciones:
echo "#################";
echo "### Funciones ###";
echo "#################";
    docker() {
        chmod 500 /var/run/docker.sock;
    }
    ssh(){
        echo "#################";
        echo "### Start ssh ###";
        echo "#################";
        /etc/init.d/ssh start
    }
    entripoint() {
        echo "##################";
        echo "### Entripoint ###";
        echo "##################";
        tail -f /dev/null
    }
    
# Ejecución
echo "#################";
echo "### Ejecución ###";
echo "#################";
    docker;
    ssh;
    entripoint;