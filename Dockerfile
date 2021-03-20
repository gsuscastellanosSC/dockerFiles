FROM ubuntu:20.04
USER root
COPY ["/shell", "/root/"]
USER root
CMD ["/root/initialConfig.sh"]
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5