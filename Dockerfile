FROM jenkins/jenkins
USER root
RUN apt-get update && apt-get install -y apt-transport-https
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.5