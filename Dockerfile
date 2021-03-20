FROM jenkins/jenkins
USER root
RUN sudo apt-get update && sudo apt-get install -y apt-transport-https
