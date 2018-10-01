# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

fpath+=~/.zfunc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /usr/share/fzf/key-bindings.zsh

function rg-replace() {
  rg -l $1 | xargs sed -ri -e "s/$1/$2/g"
}

function v() {
  nvim $*
}

function gv() {
  nohup nvim-gtk $* >& /dev/null &
}
