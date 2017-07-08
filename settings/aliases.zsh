# Overwrite, mix & match your own aliases here...

alias cd.eg='cd ~/git'
alias cd.dg='cd ~/Dropbox/git'
alias cd.js='cd ~/Documents/jobSearch'
alias cd.re='cd ~/git/RE-com'
alias cd.ap='cd ~/git/tuts-books/coursera/algorithms-princeton/notes'
alias cd.hr='cd ~/git/HackReactor/'
alias cd.t='cd ~/git/HackReactor/thesis'
alias cd.bs='cd ~/git/misc/BeatSequencer'
alias cd.tr='cd ~/git/misc/examples/TR808'
alias cd.ts='cd ~/git/tone-studio'
alias cd.tuts='cd ~/git/tuts-books'
alias cd.ems='cd ~/git/evernote/evernote-markdown-sync'

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
alias ssh-re='source $HOME/git/dot-files/shells/ssh-re'

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
