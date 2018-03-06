# source this from ~/.bashrc

vimp() {
    vim -c ":source $1"
}

# Bind caps lock to escape for vim
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

