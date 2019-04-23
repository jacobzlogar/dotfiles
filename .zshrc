export ZSH=/Users/Jacob/.oh-my-zsh

set -o vi

alias vim="/usr/local/bin/nvim-osx64/bin/nvim"
alias t='sh ~/code/dotfiles/tmux-setup.sh'
alias irc="ssh root@159.65.255.31"
alias androidemulator="/Users/Jacob/Library/Android/sdk/tools/emulator"

export TERM='screen-256color'
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/Users/Jacob/.composer/vendor/bin:$PATH"
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include
export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include
export openssl=/usr/local/opt/openssl
export NODE_PATH='/usr/local/lib/node_modules'

plugins=(vi-mode)

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

alias laravel_log='sh ~/code/logsLaravel.sh'
alias vsc="open '/Applications/Visual Studio.app'"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/code/spark-installer"
export PATH="/usr/local/bin:$PATH"
export LC_CTYPE=en_US.UTF-8
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
