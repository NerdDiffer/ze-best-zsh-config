# Setup terminal, and turn on colors
export TERM=xterm-256color

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export PAGER=less
export EDITOR=/usr/bin/vim

# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

export DOT_FILES_DIR=$HOME/.dot-files

# setup & load nvm
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
