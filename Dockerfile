FROM ubuntu:latest
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-transport-https \
    sudo;
RUN echo "`date`";
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5