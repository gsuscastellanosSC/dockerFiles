#!/bin/bash
set -x

echo "######################";
echo "### entrypoint.sh  ###";
echo "######################";

    echo "#################";
    echo "### Funciones ###";
    echo "#################";
        docker() {
            echo "##############";
            echo "### docker ###";
            echo "##############";
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
        
    echo "#################";
    echo "### Ejecución ###";
    echo "#################";
        docker;
        ssh;
        entripoint;