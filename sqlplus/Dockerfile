FROM ubuntu:20.04
ENV TZ=America/Bogota
USER root
RUN apt-get update && apt-get upgrade -y && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    cat /etc/timezone && \
    apt-get update && \
    cat /etc/timezone && \
    apt-get install -y alien wget && \
    wget -c https://download.oracle.com/otn_software/linux/instantclient/1911000/oracle-instantclient19.11-basic-19.11.0.0.0-1.x86_64.rpm && \
    wget -c https://download.oracle.com/otn_software/linux/instantclient/1911000/oracle-instantclient19.11-sqlplus-19.11.0.0.0-1.x86_64.rpm && \
    wget -c https://download.oracle.com/otn_software/linux/instantclient/1911000/oracle-instantclient19.11-devel-19.11.0.0.0-1.x86_64.rpm && \
    alien -i oracle-instantclient19.11-basic-19.11.0.0.0-1.x86_64.rpm && \
    alien -i oracle-instantclient19.11-sqlplus-19.11.0.0.0-1.x86_64.rpm && \
    alien -i oracle-instantclient19.11-devel-19.11.0.0.0-1.x86_64.rpm && \
    apt-get -y install libaio1 && \
    export LD_LIBRARY_PATH=/usr/lib/oracle/19.11/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH} && \
    export LD_LIBRARY_PATH=/usr/lib/oracle/19.11/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH} && \
    ldconfig && \
    export ORACLE_HOME=/usr/lib/oracle/19.11/client64  && \
    export PATH=$PATH:$ORACLE_HOME/bin && \
    ls $ORACLE_HOME  && \
    ls -d /usr/include/oracle/*/client*/* && \
    apt-get update && apt-get upgrade -y;
CMD tail -f /dev/null;
