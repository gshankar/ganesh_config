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
plugins=(git bundle rails ruby ganesh)

source $ZSH/oh-my-zsh.sh

alias ls="ls -G"
alias gst="git status"
alias gpl="git pull"
alias gps="git push"
alias gap="git add -p"
alias grc="git rebase --continue"
alias gf="git fetch"
alias gco="git checkout"
alias rdb="rake db:migrate db:test:prepare"
alias fstart="foreman start"
alias spec="bundle exec rspec"

#Function for lazy git commiting.  
##Instead of: git commit -m "some message"  
##Type: gci some message
gci() {
if [ -z "$1" ] # Is parameter #1 zero length?
then
echo "You must pass a commit message like this: gci some message here  - which then becomes: git commit -m 'some message here'" 
else
git commit -m "$*"
fi
}

gac() {
if [ -z "$1" ] # Is parameter #1 zero length?
then
echo "You must pass a commit message like this: gac some message here  - which then becomes: git commit -am 'some message here'" 
else
git commit -am "$*"
fi
}

# Use hub to wrap git with more GitHub commands
eval "$(hub alias -s)"

# Customize to your needs...
export PATH=/Users/ganesh/.rvm/gems/ruby-1.9.3-p194/bin:/Users/ganesh/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/ganesh/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/ganesh/.rvm/bin:/usr/local/bin:/usr/local/share/python:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/Applications/MacVim:/Users/ganesh/bin
