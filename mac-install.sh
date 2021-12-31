# tools
brew install messenger slack telegram
brew install keepassxc maccy rectangle google-drive vlc cheatsheet
brew install iterm2 tree htop jq fzf

# Python
brew install pyenv poetry
brew install mongodb-compass another-redis-desktop-manager

# Node.js
## also for coc.vim plugin
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

# devOps
brew install docker k9s kubernetes-cli
brew install tfenv

# zsh
## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
### zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
### zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# vim
## https://github.com/liuchengxu/vista.vim
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
