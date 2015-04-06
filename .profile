#
# PATHS
#

# Custom /bin
# :add binaries here for ngrok, subl
export PATH=$HOME/bin:$PATH

# git
export PATH=/usr/local/git/bin:$PATH

# XCode
export PATH=$PATH:~/Documents/sdk/platform-tools

# Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin/:$PATH

# MySQL
export PATH=$PATH:/usr/local/mysql/bin

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# AWS EC2
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.1.1
export PATH=$PATH:$EC2_HOME/bin

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
source ~/.pyconfig

# personalised commands that don't go into the repo
source ~/.extra
