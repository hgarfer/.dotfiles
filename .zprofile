# ohMyZsh Agnoster prompt
#export DEFAULT_USER="holger"
#prompt_context(){}

# upgrade
alias aptgrade='sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'
alias pacgrade='sudo pacman -Syyu --noconfirm'
alias yaygrade='yay -Syyu --noconfirm && yay -Sc --noconfirm'
alias parugrade='paru -Syyu --noconfirm'
alias brewgrade='brew update && brew upgrade && brew cleanup'
alias sdkgrade='sdk upgrade'
alias gemgrade="gem update && gem cleanup"
#alias pipgrade='pip install --upgrade pip && pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U'
alias pip3grade='pip3 install --upgrade pip && pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip3 install -U'
alias nodegrade='npm update -g'
alias fzfgrade='git -C ~/.fzf pull --rebase'
alias tpmgrade='git -C ~/.tmux/plugins/tpm pull --rebase'
alias spaceshippromptgrade='sudo git -C $ZSH_CUSTOM/themes/spaceship-prompt pull --rebase'
alias zgrade='git -C ~/.zcmd pull --rebase'
alias spacemacsgrade='git -C ~/.emacs.d pull --rebase'
alias doomemacsgrade='doom upgrade && doom purge -g'
alias asdfgrade='asdf update && asdf plugin update --all'
alias snapgrade='sudo snap refresh'
alias cargograde='cargo install-update -a'
alias upgrade='aptgrade && sdkgrade && nodegrade && tpmgrade && spaceshippromptgrade && doomemacsgrade'

# gradle
# alias g='./gradlew'
# alias gbr='g bootRun'
# alias gc='g check'

# maven
# alias m="mvn"
# alias mct="m clean test"

# git
# alias commit='git commit'
# alias clone='git clone'
# alias pull='git pull'
alias pullall="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git pull && echo)' \;"
alias statusall="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;"
# alias push='git push'
# alias status='git status'
alias YOLO='git push --force'

# NVM
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#source ~/.zcmd/z.sh
source /usr/share/z/z.sh

# dotnet tools
export PATH="$HOME/.dotnet/tools:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# npm installs en home
# PATH="$HOME/.node_modules/bin:$PATH"
# export npm_config_prefix=~/.node_modules

# added by Anaconda3 installer
#export PATH="$HOME/anaconda3/bin:$PATH"

# home bin folder
export PATH="$HOME/bin:$PATH"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Docker
alias docker-clear="docker system prune -a -f --volumes"

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# System info
alias mysysteminfo="sudo inxi -FGxm"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# DOOM Emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# python local stuff
export PATH="$HOME/.local/bin:$PATH"

# cargo (rust) packages
export PATH="$HOME/.cargo/bin:$PATH"


# powerline
# powerline-daemon -q
# . /usr/share/powerline/bindings/zsh/powerline.zsh


# RVM

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

# RVM bash completion
#[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

# fzf
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# spaceship stuff
export SPACESHIP_BATTERY_SHOW=false

alias update-nvim-master='asdf uninstall neovim ref:master && asdf install neovim ref:master'
