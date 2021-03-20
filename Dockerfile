FROM ubuntu:20.04
USER root
RUN apt-get update && apt-get upgrade -y;
RUN apt-get install -y zsh git-core git-flow;
RUN echo "`date`";
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5