FROM jenkins/jenkins
USER root
RUN apt-get update && apt-get install -y apt-transport-https
