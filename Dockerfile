FROM ubuntu:20.04
USER root
COPY ["shell", "/shell"]
USER root
RUN  ls -lsth /shell/
CMD ["sh", "shell/initialConfig.sh"]
ENTRYPOINT ["/bin/echo", "Hello world"]
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5