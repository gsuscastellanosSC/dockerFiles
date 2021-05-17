FROM centos

USER root
RUN yum -y install openssh-server openssh-clients

RUN mkdir /root/.ssh && \
  chmod 700 /root/.ssh

COPY authorized_keys /root/.ssh/authorized_keys

RUN chown root:root   -R /root && \
    chmod 600 /root/.ssh/authorized_keys

RUN /usr/bin/ssh-keygen -A
RUN rm -rf /run/nologin
CMD ["/usr/sbin/sshd", "-D"]
