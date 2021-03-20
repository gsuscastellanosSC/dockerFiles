FROM ubuntu
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y  zsh \ 
    git-core \
    wget \
    git-flow;
USER root
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
#RUN chsh -s `which zsh;
USER root
RUN apt-get install fonts-powerline;
USER root
RUN cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
