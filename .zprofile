# ohMyZsh Agnoster prompt
#export DEFAULT_USER="holger"
#prompt_context(){}

# upgrade
alias brewgrade='brew update && brew upgrade && brew cleanup'
alias sdkgrade='sdk upgrade'
alias gemgrade="gem update && gem cleanup"
#alias pipgrade='pip install --upgrade pip && pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U'
alias pip3grade='pip3 install --upgrade pip && pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip3 install -U'
alias nodegrade='npm update -g'
alias fzfgrade='git -C ~/.fzf pull --rebase'
alias tpmgrade='git -C ~/.tmux/plugins/tpm pull --rebase'
alias megrade='git -C ~/me pull --recurse-submodules=yes'
alias spaceshippromptgrade='sudo git -C $ZSH_CUSTOM/themes/spaceship-prompt pull --rebase'
alias zgrade='git -C ~/.zcmd pull --rebase'
alias spacemacsgrade='git -C ~/.emacs.d pull --rebase'
alias doomemacsgrade='doom upgrade && doom purge -g'
alias asdfgrade='asdf update && asdf plugin update --all'
alias cargograde='cargo install-update -a'
alias omzgrade='omz update'
alias upgrade=' brewgrade && megrade && omzgrade && doomemacsgrade'

alias pullall="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git pull && echo)' \;"
alias statusall="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;"


# home bin folder
export PATH="$HOME/bin:$PATH"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Docker
alias docker-clear="docker system prune -a -f --volumes"

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# DOOM Emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# python local stuff
export PATH="$HOME/.local/bin:$PATH"

# cargo (rust) packages
export PATH="$HOME/.cargo/bin:$PATH"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

alias update-nvim-master='asdf uninstall neovim ref:master && asdf install neovim ref:master'


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export PATH="/usr/local/sbin:$PATH"







export PATH="/usr/local/anaconda3/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


if [ -d "/usr/local/opt/ruby/bin" ]; then
  export PATH=/usr/local/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
