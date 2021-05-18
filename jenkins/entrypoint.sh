#!/bin/bash
set -x

echo "######################";
echo "### entrypoint.sh  ###";
echo "######################";

# Funciones
    # Docker in docker
    docker() {
        chmod 500 /var/run/docker.sock;
    }
    # Start services
    startServices(){
        /etc/init.d/ssh start;
        /etc/init.d/jenkins start;
    }
    # Entripoint
    entripoint() {
        docker;
        #startServices;
        tail -f /dev/null
    }
        
# Ejecución
  entripoint;