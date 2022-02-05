# install HackGen fonts
# https://github.com/yuru7/HackGen

# install packages
apt-get -y install tmux vim zsh git curl htop sudo

# install Starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# clone dotfiles
git clone https://github.com/jyuch/dotfiles.git .dotfiles

# setup git config
git config user.name "jyuch"
git config user.email "jyuch@users.noreply.github.com"

# crete symlink
chmod u+x install.sh
./install.sh
