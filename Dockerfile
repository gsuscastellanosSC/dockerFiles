FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y && \
    apt-get install sudo nano && \ 
    apt-get install -y zsh git-core git-flow wget && \ 
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && \ 
    apt-get install -y fonts-powerline && \ 
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \ 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \ 
    apt-get update && apt-get upgrade -y;
FROM jenkins/jenkins:2.277.1-lts-jdk11
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.24.5 docker-workflow:1.26"
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5