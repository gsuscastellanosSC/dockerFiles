FROM ubuntu:20.04
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install sudo nano && apt-get update && apt-get upgrade -y && apt-get install -y zsh git-core git-flow wget;
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
RUN ["chsh", "-s", "`which zsh`"];
RUN ["apt-get", "install", "-y", "fonts-powerline"];
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
RUN apt update && sudo apt upgrade -y;
#USER jenkins
#RUN jenkins-plugin-cli --plugins blueocean:1.24.5