# Overwrite, mix & match your own aliases here...

# git aliases
alias gbr='git branch'
alias gci='git commit'
alias gco='git checkout'
alias gst='git status'
alias ga='git add'

# other commands
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias c='clear'
alias diff='colordiff'

# aliases provided with a fresh install of Manjaro
alias l='ls -CF'
alias ls='ls --group-directories-first --time-style=+"%m.%d.%Y %H:%M" --color=auto -F'
alias ll='ls --group-directories-first --time-style=+"%m.%d.%Y %H:%M" --color=auto -Fl'
alias la='ls --group-directories-first --time-style=+"%m.%d.%Y %H:%M" --color=auto -Fla'
alias grep='grep --color=tty -d skip'
alias df='df -h'                      # human-readable sizes
alias free='free -m'                  # show sizes in MB
alias np='nano PKGBUILD'
alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  && sudo pacman -Suu'

# some safety nets
alias rm='rm -I'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
