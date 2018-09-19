[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
autorandr --change
exec i3
