# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node brew github osx svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:$PATH"
export NODE_PATH=/usr/local/share/npm/lib/node_modules

alias mcd='mvn clean deploy'
alias flushdns='sudo dscacheutil -flushcache'
alias breakwall='ssh -D 7070 kaizi@96.126.122.58'
alias v='mvim'
alias vi='mvim'
alias vim='mvim'

hash -d tk="$HOME/workspace/trunk"
hash -d rei="$HOME/workspace/git/site_rei"
hash -d set="$HOME/workspace/git/set"

. ~/.spm_completion
