#!/bin/bash
set -x

echo "######################";
echo "### entrypoint.sh  ###";
echo "######################";

    echo "#################";
    echo "### Funciones ###";
    echo "#################";
        installJava(){
            echo "####################";
            echo "### install Java ###";
            echo "####################";
                cd /root;
                sudo tar -C /usr/lib/jvm -xvf jdk-8u202-linux-x64.tar.gz;
                source /etc/environment;
                sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_202/bin/java 1;
                echo "2" | sudo update-alternatives --config java;
        }
        entripoint() {
            echo "##################";
            echo "### Entripoint ###";
            echo "##################";
                installJava;
                tail -f /dev/null;
        }

    echo "#################";
    echo "### Ejecución ###";
    echo "#################";
        entripoint;