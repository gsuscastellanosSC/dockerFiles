apt-get update && apt-get upgrade -y && apt-get install sudo nano && sudo apt-get update && sudo apt-get upgrade -y;
sudo apt-get install -y  zsh git-core git-flow;
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
chsh -s `which zsh`;
sudo apt-get install fonts-powerline;
cd ~/.oh-my-zsh/custom/plugins; 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
sudo apt update && sudo apt upgrade -y;