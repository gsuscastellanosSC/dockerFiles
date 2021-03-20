FROM ubuntu:latest
USER root
RUN apt-get update && apt-get upgrade -y;
RUN apt-get install -y sudo;
RUN apt-get update && apt-get upgrade -y;
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5