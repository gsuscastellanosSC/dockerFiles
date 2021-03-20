FROM jenkins/jenkins
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
    nano \
    zsh \
    git-core \
    git-flow;
USER root
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
#RUN chsh -s `which zsh;
USER root
RUN apt-get install fonts-powerline;
USER root
RUN cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
USER root
RUN apt-get update && apt-get upgrade -y;
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.5