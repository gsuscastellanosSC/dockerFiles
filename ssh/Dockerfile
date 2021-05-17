FROM centos

RUN yum -y install openssh-server openssh-clients

RUN useradd -ms /bin/bash remote_user && \
  echo 'remote_user:12345' | chpasswd && \
  mkdir /home/remote_user/.ssh && \
  chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user   -R /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/bin/ssh-keygen -A
RUN rm -rf /run/nologin
CMD ["/usr/sbin/sshd", "-D"]
