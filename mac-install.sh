# Node.js
## also for coc.vim plugin
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

# brew
## install homebrew package from Brewfile
brew bundle install

# zsh
## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
### zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
### zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
### git-open
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open

# extend default plugin list
# plugins=(
#     git
#     git-open
#     zsh-autosuggestions zsh-syntax-highlighting
#     docker docker-compose
#     kube-ps1
#     kubectl
#     helm
#     ansible
# )


# krew
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)

## krew plugins
k krew install ctx konfig neat ns

# create soft link for custom vimrc and zshrc
ln -s ~/Project/note/YA_zshrc ~/YA_zshrc
ln -s ~/Project/note/vim/vimrc ~/.vimrc

# vim-plug https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
