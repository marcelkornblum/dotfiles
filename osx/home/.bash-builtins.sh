# Some minor amends to make browsing easier

function ll() { ls -la "$@"; }
function cd() { builtin cd "$@" && ls; }
function ..() { cd ..; }
alias gs="git status"
alias gu="git pull"
alias gc="git commit -am"
alias gp="git push"
alias ga="git add --all ."
alias gf="git flow"
syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
