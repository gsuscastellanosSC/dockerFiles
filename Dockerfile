FROM ubuntu:20.04
USER root
COPY ["/shell", "/root/shell/"]
CMD ["/root/initialConfig.sh"]
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5