#apt update && apt -y upgrade
#apt-get install -y sudo alien wget
#mkdir /opt/oracle
#cd /opt/oracle

#wget -c https://download.oracle.com/otn_software/linux/instantclient/1911000/oracle-instantclient19.11-basic-19.11.0.0.0-1.x86_64.rpm
#wget -c https://download.oracle.com/otn_software/linux/instantclient/1911000/oracle-instantclient19.11-sqlplus-19.11.0.0.0-1.x86_64.rpm
#wget -c https://download.oracle.com/otn_software/linux/instantclient/1911000/oracle-instantclient19.11-devel-19.11.0.0.0-1.x86_64.rpm
 
#alien -i oracle-instantclient19.11-basic-19.11.0.0.0-1.x86_64.rpm
#alien -i oracle-instantclient19.11-sqlplus-19.11.0.0.0-1.x86_64.rpm
#alien -i oracle-instantclient19.11-devel-19.11.0.0.0-1.x86_64.rpm

#apt-get -y install libaio1

#export LD_LIBRARY_PATH=/usr/lib/oracle/19.11/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
#export LD_LIBRARY_PATH=/usr/lib/oracle/19.11/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
#ldconfig
#export ORACLE_HOME=/usr/lib/oracle/19.11/client64
#export PATH=$PATH:$ORACLE_HOME/bin
#ls $ORACLE_HOME
#ls -d /usr/include/oracle/*/client*/*


FROM ubuntu:20.04
ENV TZ=America/Bogota
USER root
RUN apt-get update && apt-get upgrade -y && \
    echo $TZ > /etc/timezone && \
    cat /etc/timezone && \
    apt-get update && \
    cat /etc/timezone && \
    echo "hello World";
#     apt-get install -y zsh git-core git-flow wget apt-transport-https ca-certificates curl gnupg2 && \ 
#     wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && \ 
#     apt-get install -y fonts-powerline && \ 
#     git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \ 
#     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \ 
#     apt-get update && apt-get upgrade -y && \ 
#     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
#     apt-get install -y default-jdk && \
#     apt-get install -y software-properties-common gnupg-agent && \
#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add && \
#     apt-key fingerprint 0EBFCD88 && \ 
#     sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" && \
#     sudo apt update && \
#     apt-get install -y docker-ce docker-ce-cli containerd.io && \
#     /etc/init.d/docker start && \
#     wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - && \
#     sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
#     apt-get update && \
#     apt-get install -y jenkins;
CMD /etc/init.d/jenkins start && tail -f /dev/null;
