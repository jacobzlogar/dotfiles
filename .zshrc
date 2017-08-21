export ZSH=/Users/Jacob/.oh-my-zsh

autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

prompt pure

export ZSH_THEME="pure"

alias vim="nvim"
export TERM='screen-256color'
export PATH="/usr/local/sbin:$PATH"
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/Users/Jacob/.composer/vendor/bin"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
alias laravel="~/.composer/vendor/bin/laravel"
export ngrok="/Applications/ngrok"
alias digitalocean="ssh root@192.241.141.54"
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include
export openssl=/usr/local/opt/openssl

source $ZSH/oh-my-zsh.sh

export NVM_DIR="/Users/Jacob/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
