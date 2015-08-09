[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
urxvtd &
exec i3
