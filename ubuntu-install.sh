# git
# https://git-scm.com/download/linux
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
git config --global user.email "f46284628@gmail.com"
git config --global user.name "LittleWhiteYA"

# vim
sudo apt-get install vim

# htop
sudo apt install htop

# tmux
sudo apt install tmux

# tlp: save your power on ubuntu
# https://github.com/linrunner/TLP
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo tlp start

# nvm
# https://github.com/creationix/nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install node

# Vundle
# https://github.com/VundleVim/Vundle.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

## YouCompleteMe
## https://github.com/Valloric/YouCompleteMe
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
source ~/.bashrc
./.vim/bundle/YouCompleteMe/install.py --js-completer

## christoomey/vim-system-copy
## https://github.com/christoomey/vim-system-copy
sudo apt-get install xsel

## fzf https://github.com/junegunn/fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# yarn
# https://yarnpkg.com/lang/en/docs/install/#debian-stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install --no-install-recommends yarn

# docker-ce
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update && sudo apt-get install docker-ce

# docker-compose
# https://docs.docker.com/compose/install/#install-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# kubectl
# https://kubernetes.io/docs/tasks/tools/install-kubectl
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install kubectl

# kube-shell
# https://github.com/cloudnativelabs/kube-shell
sudo apt-get install python3-pip
pip3 install kube-shell

# helm
# https://github.com/kubernetes/helm/blob/master/docs/install.md
curl -sL https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz | tar zx
sudo mv linux-amd64/helm /usr/local/bin/helm
rm -r linux-amd64
