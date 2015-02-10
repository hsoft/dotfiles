if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$HOME/.local/bin:$PATH"
fi

export PATH="$PATH:$HOME/.gem/ruby/2.0.0/bin"
# The Vagrant warning about not using the official version is annoying.
# This variable removes it.
export VAGRANT_INSTALLER_ENV=yes

# https://faq.i3wm.org/question/2498/ssh-sessions-in-i3/?answer=3446#post-id-3446
if [ "$0" = "/etc/lightdm/Xsession" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK GPG_AGENT_INFO GNOME_KEYRING_CONTROL GNOME_KEYRING_PID
    export SSH_AGENT_PID=$GNOME_KEYRING_PID
fi
