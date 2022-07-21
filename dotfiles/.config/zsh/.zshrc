# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$ZDOTDIR"/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

# powerlevel10k
[ -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ] && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# zsh-completion
[ -d /usr/share/zsh/site-functions ] && fpath=(/usr/share/zsh/site-functions/ $fpath)
autoload -U compinit; compinit -d "$XDG_STATE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# zsh-autosuggestions
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt auto_cd
setopt correct
setopt nolistbeep
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# nord-dircolors
test -r $ZDOTDIR/dir_colors && eval $(dircolors $ZDOTDIR/dir_colors)

# chpwd
command -v exa &>/dev/null && function chpwd() { exa }

# completion
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors "${LS_COLORS}"

# pkgfile
[ -f /usr/share/doc/pkgfile/command-not-found.zsh ] && source /usr/share/doc/pkgfile/command-not-found.zsh

# alias
[ -f $ZDOTDIR/aliasrc ] && source $ZDOTDIR/aliasrc

# emacs keybind
bindkey -e

# edit-command-line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# thefuck
command -v thefuck &>/dev/null && eval $(thefuck --alias)

# zoxide
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"

# fzf-nord
[ -f ~/.zsh/fzf.config ] && source ~/.zsh/fzf.config

# <C-d> to exit zsh
exit_zsh() { exit }
zle -N exit_zsh
bindkey '^D' exit_zsh

# fzf-keybind
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# Use pinentry-curses in gpg
export GPG_TTY=$TTY
