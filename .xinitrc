[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
exec i3
