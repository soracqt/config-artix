# go
export GOPATH="$HOME/go"

# user path
export PATH="$PATH:$GOPATH/bin:$HOME/bin:$HOME/.local/bin"

# nvim
export EDITOR="nvim"

# Nord bat
export BAT_THEME=Nord

# GPG_TTY
export GPG_TTY=$(tty)

# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# FZF_DEFAULT_OPTS
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"

# sway and i3wm
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty2" ]; then
        exec ~/.bin/sway.sh
elif [ -z $WAYLAND_DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
        startx
fi

export LC_MESSAGES=en_US.UTF-8
