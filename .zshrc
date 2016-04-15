# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export EDITOR="nvim"

#autoload predict-on
#predict-on

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /etc/profile.d/fzf.zsh

