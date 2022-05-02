SHELL=zsh
PROMPT="%F{14}%~%f%B%F{63} $ %f%b"
alias ls='ls --color=auto'
alias cp="rsync -P"
alias grep='grep  --color=auto'
alias say='espeak-ng'
alias tldr="/home/jake/scripts/cheat.sh"
alias yuzu="/home/jake/.local/share/yuzu/yuzu"
alias less="less -N"
alias rust="sh /home/jake/scripts/connectRust.sh"
alias pi="sh /home/jake/scripts/connectpi.sh"
alias roompi="ssh jake@roompi"
alias update="sh /home/jake/pi/backups/scripts_and_tuts/pacman_sync.sh"
alias iptv="sh /home/jake/scripts/iptv_get.sh"
alias tmux="TERM=screen-256color-bce tmux"
#alias yay="yay --nocleanmenu --nodiffmenu"
alias vim="nvim"
alias df='git --git-dir=/mnt/hdd/.git-repos/dotfiles --work-tree=$HOME'
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/home/jake/.cargo/bin:/home/jake/.local/bin
export ZSH=/usr/share/oh-my-zsh/
export WINEPREFIX=$HOME/.wine
#export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export QT_SCALE_FACTOR=1.5
#export GTK_SCALE=1.5
#export GTK_DPI_SCALE=1.5
export QT_LOGGING_RULES='*=false'

plugins=(git tmux systemd colored-man-pages extract)

source $ZSH/oh-my-zsh.sh

export XDG_CONFIG_HOME=/home/jake/.config
export XDG_CACHE_HOME=/home/jake/.cache
export XDG_DATA_HOME=/home/jake/.local/share

eval "$(antidot init)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jake/.zshrc'

autoload -Uz compinit promptinit
compinit
# End of lines added by compinstall

# Prompt theme
promptinit
#prompt adam1
#PROMPT="%F{cyan}%~%f%F{105} $%f "

# Menu completion
zstyle ':completion:*' menu select

