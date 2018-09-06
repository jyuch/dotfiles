# install packages
sudo apt-get -y install tmux emacs25-nox zsh git gawk fonts-powerline curl

# clone this repository
git clone https://github.com/jyuch/dotfiles.git .dotfiles

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# clone dotfiles
git clone https://github.com/jyuch/dotfiles.git .dotfiles

# crete symlink
chmod u+x install.sh
./install.sh
