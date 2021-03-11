export EDITOR="nvim"
export GOPATH="$HOME/Code/go"
export PAGER="less -r"
export XKB_DEFAULT_LAYOUT=fr
export NVIM_GTK_NO_HEADERBAR=1

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$GEM_HOME/bin"
