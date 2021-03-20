FROM ubuntu:latest
USER root
RUN apt-get update && apt-get upgrate && apt-get install -y apt-transport-https \
    sudo;
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5