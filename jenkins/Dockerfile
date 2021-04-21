# FROM ubuntu:20.04
# ENV TZ=America/Bogota
# USER root
# RUN apt-get update && apt-get upgrade -y && \
#     apt-get install sudo nano && \ 
#     apt-get install -y zsh git-core git-flow wget apt-transport-https ca-certificates curl gnupg2 && \ 
#     wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && \ 
#     apt-get install -y fonts-powerline && \ 
#     git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \ 
#     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \ 
#     apt-get update && apt-get upgrade -y && \ 
#     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
#     echo $TZ > /etc/timezone && \
#     cat /etc/timezone && \
#     apt-get update && \
#     cat /etc/timezone && \
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
# CMD /etc/init.d/jenkins start && tail -f /dev/null;
#FROM jenkins/jenkins:2.249.3-lts
FROM jenkins/jenkins:2.284
USER root
RUN apt-get update
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN docker --version
VOLUME /var/run/docker.sock
ENTRYPOINT chmod 777 /var/run/docker.sock && /usr/local/bin/jenkins.sh