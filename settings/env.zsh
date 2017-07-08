# PATH stuff
PATH=$HOME/.rbenv/bin:$PATH
PATH=/usr/local/heroku/bin:$PATH

eval "$(rbenv init -)"

GOPATH="$HOME/git/go"
PATH=$PATH:$(go env GOPATH)/bin

export GOPATH
export PATH
