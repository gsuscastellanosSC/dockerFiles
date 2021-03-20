FROM jenkins/jenkins
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
    zsh \
    git-core \
    git-flow;
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
#RUN chsh -s `which zsh;
RUN apt-get install fonts-powerline;
RUN cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
RUN apt update && sudo apt upgrade -y;
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.5