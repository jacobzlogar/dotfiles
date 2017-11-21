export ZSH=/Users/Jacob/.oh-my-zsh

alias vim="nvim"
export TERM='screen-256color'

export PATH="/usr/local/sbin:$PATH"
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/Users/Jacob/.composer/vendor/bin"
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"
alias laravel="~/.composer/vendor/bin/laravel"
alias digitalocean="ssh root@192.241.141.54"
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include
export openssl=/usr/local/opt/openssl

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

prompt pure
ZSH_THEME=""

original_phpunit=$(which phpunit)

phpunit() {
  if [ -f vendor/bin/phpunit ]; then vendor/bin/phpunit $@
  else eval "'$original_phpunit' $@"
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vsc="open '/Applications/Visual Studio.app'"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/code/spark-installer"
export PATH="/usr/local/bin:$PATH"
