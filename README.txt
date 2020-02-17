# install packages
apt-get -y install tmux vim zsh git gawk fonts-powerline curl htop sudo

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# clone dotfiles
git clone https://github.com/jyuch/dotfiles.git .dotfiles

# setup git config
git config user.name "jyuch"
git config user.email "jyuch@users.noreply.github.com"

# crete symlink
chmod u+x install.sh
./install.sh
