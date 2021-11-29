# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists    
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#
# PATHS
#

# git
#export PATH=/usr/local/git/bin:$PATH

# XCode
#export PATH=$PATH:~/Documents/sdk/platform-tools

# Postgres
#export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin/:$PATH

# MySQL
#export PATH=$PATH:/usr/local/mysql/bin

# Java
#export JAVA_HOME=$(/usr/libexec/java_home)

# RVM
#export PATH="$PATH:$HOME/.rvm/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

# AWS EC2
#export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.1.1
#export PATH=$PATH:$EC2_HOME/bin

#
# CUSTOM SETUP
#

# git auto-complete
source ~/.git-completion.bash

# ssh auto-complete
source ~/.ssh-completion.bash

# PS1 Madness
source ~/.git-prompt.sh

# Custom commands
source ~/.builtins

# everyday shortcuts
source ~/.aliases

# CLI utilities
#source ~/.utils

# completions for all those aliases
source ~/.alias-completion.sh

# Venv and Pip setup
# source ~/.pyconfig

# personalised commands that don't go into the repo
# source ~/.extra


# Set up command prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
export PS1='$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then
  GitPath=$(git rev-parse --show-prefix)
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1;
  if [ "$?" -eq "0" ]; then
    # @4 - Clean repository - nothing to commit
    echo "'$Purple'"$(__gitrepo) "'$Green'"$(__git_ps1 "%s") "'$Yellow'/"${GitPath%?}"'$NewLine'"'$Color_Off';
  else
    # @5 - Changes to working tree
    echo "'$Purple'"$(__gitrepo) "'$Red'"$(__git_ps1 "%s") "'$Yellow'/"${GitPath%?}"'$NewLine'"'$Color_Off';
  fi)> ";
else
  # @2 - Prompt when not in GIT repo
  echo "'$Yellow$PathFull$Color_Off$NewLine'> ";
fi)'



# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
