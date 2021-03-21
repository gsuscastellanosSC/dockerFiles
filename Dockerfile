FROM ubuntu:20.04
ENV TZ=America/Bogota
USER root
RUN apt-get update && apt-get upgrade -y && \
    apt-get install sudo nano && \ 
    apt-get install -y zsh git-core git-flow wget && \ 
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && \ 
    apt-get install -y fonts-powerline && \ 
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \ 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \ 
    apt-get update && apt-get upgrade -y;
RUN ["ln", "-snf", "/usr/share/zoneinfo/$TZ", "/etc/localtime"];
RUN echo $TZ > /etc/timezone;
RUN apt-get install -y software-properties-common;