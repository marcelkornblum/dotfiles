# XCODE
PATH=$PATH:~/Documents/sdk/platform-tools

# POSTGRES
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin/:$PATH

# MySQL
export PATH=$PATH:/usr/local/mysql/bin

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# AWS EC2
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.1.1
export PATH=$PATH:$EC2_HOME/bin 

# Git
export PATH=/usr/local/git/bin:$PATH

# Git auto-complete
source ~/.git-completion.bash

# Custom commands
source ~/.builtins

# PS1 Madness
source ~/.git-prompt.sh

source ~/.aliases

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Sitesi
source /usr/local/bin/virtualenvwrapper.sh


syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh
