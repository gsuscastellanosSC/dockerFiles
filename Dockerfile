FROM ubuntu:latest
USER root
RUN apt-get update && apt-get upgrade && apt-get install sudo -y;
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5