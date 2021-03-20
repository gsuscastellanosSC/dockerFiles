FROM ubuntu:20.04
COPY ["shell/", "/root/"]
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5