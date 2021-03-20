FROM ubuntu:20.04
USER root
RUN apt-get update;
USER root
RUN apt-get upgrade -y;
USER root
RUN apt-get install -y sudo;
USER root
RUN sudo apt-get update;
USER root
RUN sudo apt-get upgrade -y;
RUN echo "`date`";
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5