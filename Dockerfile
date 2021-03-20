FROM jenkins/jenkins
USER root
RUN apt-get update \
    apt-get upgrade -y \ 
    apt-get install -y apt-transport-https \
    apt-get install -y zsh \
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh \
    chsh -s `which zsh` && apt-get install fonts-powerline && cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.5