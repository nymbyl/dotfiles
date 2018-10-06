# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

export TERM='xterm-256color'

alias tmux='tmux -2'  # for 256color

#export PATH=$PATH:/usr/local/go/bin
#export GOPATH=(go env GOPATH)
#export PATH=$PATH:/usr/local/go/bin:(go env GOPATH)/bin
#/home/rob/.asdf/bin
set -gx PATH /home/rob/.asdf/bin /home/rob/.local/bin $PATH

eval (direnv hook fish)
