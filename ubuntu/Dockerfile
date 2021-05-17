FROM ubuntu:20.04
ENV TZ=America/Bogota
USER root
RUN apt-get update;
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone;
RUN apt-get install -y sudo nano openssh-server openssh-client ssh apt-transport-https ca-certificates curl gnupg2 zsh git-core git-flow default-jdk software-properties-common gnupg-agent;
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && apt-get install -y fonts-powerline && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add && apt-key fingerprint 0EBFCD88 && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" && sudo apt update && apt-get install -y docker-ce docker-ce-cli containerd.io;
RUN  mkdir /root/.ssh
COPY ../.ssh/remote-key.pub /root/.ssh/authorized_keys
COPY entrypoint.sh /root/entrypoint.sh