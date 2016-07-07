# Path to your oh-my-zsh installation.
export ZSH=/Users/rn47/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster" # (this is one of the fancy ones)
#ZSH_THEME="amuse"
#ZSH_THEME="sunaku"
#ZSH_THEME="wezm"
#ZSH_THEME="muse"
#ZSH_THEME="michelebologna"
ZSH_THEME="kolo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#

DISABLE_AUTO_TITLE=true

export DYLD_LIBRARY_PATH=/usr/local/oracle/instantclient_11_2
export ORACLE_HOME=/usr/local/oracle/instantclient_11_2
export SQLPATH=/usr/local/oracle/instantclient_11_2
export NLS_LANG=AMERICAN_AMERICA.UTF8
export TNS_ADMIN=/usr/local/oracle/network/admin
export PATH=$PATH:$DYLD_LIBRARY_PATH # fix character encoding issue

export PATH=$PATH:/usr/local/Cellar/mysql55/5.5.44/bin

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/rn47/.docker/machine/machines/docker-vm
export DOCKER_MACHINE_NAME=docker-vm

alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v1.7)'
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v1.8)'
export ANT_HOME=/usr/share/ant

#default java7
export JAVA_HOME=$(/usr/libexec/java_home -v1.7)

export CATALINA_HOME=/usr/local/Cellar/tomcat7/7.0.63/libexec
export TOMCAT_HOME=$CATALINA_HOME

export GOPATH=~/go
export GO15VENDOREXPERIMENT=1

export PATH="./.git/safe/../../bin:$PATH"

source /usr/local/share/chruby/chruby.sh

export JRUBY_OPTS="--1.9 -J-Xms1500m -J-Xmx1500m -J-XX:+UseConcMarkSweepGC -J-XX:-UseGCOverheadLimit -J-XX:+CMSClassUnloadingEnabled -J-Djava.awt.headless=true -J-XX:MaxPermSize=128m"


