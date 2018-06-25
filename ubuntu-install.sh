# git
# https://git-scm.com/download/linux
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

# vim
sudo apt-get install vim

# htop
sudo apt install htop

# tmux
sudo apt install tmux

# nvm
# https://github.com/creationix/nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
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
