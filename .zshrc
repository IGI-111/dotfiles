# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export EDITOR="nvim"
export PAGER="less -r"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /usr/share/fzf/key-bindings.zsh

function rg-replace() {
    rg -l $1 | xargs sed -ri -e "s/$1/$2/g"
}

alias sucre="yaourt -Suya --noconfirm"
alias yaourt="yaourt --pager --color"
alias t="todo.sh"
