# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export EDITOR="nvim"

#autoload predict-on
#predict-on

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /usr/share/fzf/key-bindings.zsh

function ag-replace() {
    ag -l $1 | xargs sed -ri -e "s/$1/$2/g"
}
