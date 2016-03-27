#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export EDITOR="nvim"

#autoload predict-on
#predict-on

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. /etc/profile.d/fzf.zsh

