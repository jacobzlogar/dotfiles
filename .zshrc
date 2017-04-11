export ZSH=/Users/Jacob/.oh-my-zsh

ZSH_THEME="xiong-chiamiov-plus"
plugins=(git)

alias vim="nvim"
export PATH="/usr/local/sbin:$PATH"
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/Users/Jacob/.composer/vendor/bin"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
alias laravelPermissions='chmod +x ~/.composer/vendor/bin/laravel'
alias gradle='~/Downloads/gradle-2.13/bin/gradle'
alias laravel="~/.composer/vendor/bin/laravel"
alias cockroach="~/code/cockroach-beta-20160728.darwin-10.9-amd64/cockroach"
export GHC_DOT_APP="/Applications/ghc-7.10.3.app"
export ngrok="/Applications/ngrok"
alias digitalocean="ssh root@192.241.141.54"
export GOROOT=/usr/local/go
export GOPATH=$HOME/code/gostuff
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export NVIM_TUI_ENABLE_TRUE_COLOR=1
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

source $ZSH/oh-my-zsh.sh
alias homestead="cd ~/homestead && vagrant up && vagrant ssh"
alias v="vagrant"
alias s="screen"
alias work="cd ~/code/AppSygna"
alias code="cd ~/code"
alias 0="tmux attach-session -t 0"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="/Users/Jacob/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export TERM='xterm-256color'
zstyle :omz:plugins:ssh-agent agent-forwarding on
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
