# install HackGen fonts
# https://github.com/yuru7/HackGen

# install packages
apt install tmux vim zsh git curl htop sudo

# install rust env
apt install build-essential libssl-dev pkg-config
curl https://sh.rustup.rs -sSf | sh

# create ssh-key and register to github (if needed)
ssh-keygen -t ed25519 -C "comment"

# clone dotfiles
git clone https://github.com/jyuch/dotfiles.git .dotfiles
# or
git clone git@github.com:jyuch/dotfiles.git .dotfiles

# copy default .gitconfig
cp .dotfiles/gitconfig .gitconfig

# install tools via cargo
chmod u+x crate-install-tools.sh
./crate-install-tools.sh

# crete symlink
chmod u+x create-symlink.sh
./create-symlink.sh
