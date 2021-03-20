FROM jenkins/jenkins

RUN apt-get update \ 
    pwd \ 
    ls \
    echo $JAVA_HOME
