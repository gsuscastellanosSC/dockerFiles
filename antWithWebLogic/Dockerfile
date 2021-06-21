FROM ubuntu:20.04
ENV TZ=America/Bogota
ENV JAVA_HOME=/usr/lib/jvm/jdk1.8.0_202
ENV WEBLOGIC=/root/fmw_12.2.1.3.0_wls
ENV ANT_HOME=/root/apache-ant-1.9.15
# ENV ANT_OPTS="-Xms256M -Xmx512M"
ENV PATH=$PATH:$HOME/bin:$ANT_HOME/bin
USER root
RUN apt-get update;
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone;
RUN apt-get install -y sudo nano
RUN mkdir /usr/lib/jvm
RUN echo "export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_202" >> /etc/profile && echo "export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_202" >> /etc/environment;
RUN echo "export WEBLOGIC=/root/fmw_12.2.1.3.0_wls" >> /etc/profile && echo "export WEBLOGIC=/root/fmw_12.2.1.3.0_wls" >> /etc/environment;
RUN echo "export ANT_HOME=/root/apache-ant-1.9.15" >> /etc/profile && echo "export ANT_HOME=/root/apache-ant-1.9.15" >> /etc/environment;
# RUN echo "export ANT_HOME ANT_OPTS PAT" >> /etc/profile && echo "export ANT_HOME ANT_OPTS PAT" >> /etc/environment;
RUN echo "export ANT_HOME PAT" >> /etc/profile && echo "export ANT_HOME ANT_OPTS PAT" >> /etc/environment;
RUN mkdir /root/.ssh;
COPY authorized_keys /root/.ssh/authorized_keys
COPY entrypoint.sh /root/entrypoint.sh