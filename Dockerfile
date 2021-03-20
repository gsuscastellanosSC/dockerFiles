FROM ubuntu:20.04
USER root
COPY [".", "/shell"]
USER root
RUN  ls -lsth /shell/shell
CMD ["/shell/shell/initialConfig.sh"]
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5