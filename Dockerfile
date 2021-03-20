FROM jenkins/jenkins
USER root
RUN apt-get update \
    apt-get upgrade -y \ 
    apt-get install -y apt-transport-https \
    apt-get install -y  zsh git-core;
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.5