FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y && \
    apt-get install sudo nano && \ 
    apt-get install -y zsh git-core git-flow wget apt-transport-https ca-certificates curl && \ 
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh && \ 
    apt-get install -y fonts-powerline && \ 
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \ 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \ 
    apt-get update && apt-get upgrade -y;
#RUN useradd -m jenkins && \
#    sudo apt-get install -y wget gnupg && \
#    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - && \
#    sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
#RUN apt-get update && apt-get install -y apt-transport-https \
#       ca-certificates curl gnupg2 \
#       software-properties-common
#RUN apt-get install -y jenkins && \ 
 #   apt-get update && apt-get upgrade -y
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5