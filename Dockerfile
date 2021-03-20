FROM ubuntu:latest
USER root
RUN apt-get update && apt-get upgrade -y;
RUN echo "`date`";
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5