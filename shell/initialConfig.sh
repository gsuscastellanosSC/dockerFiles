apt-get update && apt-get upgrade -y && apt-get install sudo nano && apt-get update && apt-get upgrade -y;
apt-get install -y  zsh git-core git-flow wget;
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
chsh -s `which zsh`;
apt-get install -y fonts-powerline;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
cd ~/.oh-my-zsh/custom/plugins;
apt update && sudo apt upgrade -y;