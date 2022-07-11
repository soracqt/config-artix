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

export LC_MESSAGES=en_US.UTF-8
export GHQ_ROOT=~/project

# xdg
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export ANDROID_HOME="$XDG_DATA_HOME"/android
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# user path
export PATH="$PATH:$GOPATH/bin:$HOME/.local/bin"

# sway and i3wm
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty2" ]; then
        exec ~/.local/bin/sway.sh
elif [ -z $WAYLAND_DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
        startx
fi
