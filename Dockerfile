FROM ubuntu:20.04
USER root
COPY [".", "/shell"]
USER root
RUN  ls -lsth / 
#CMD [". ../shell/initialConfig.sh"]
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5