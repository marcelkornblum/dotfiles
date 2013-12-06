# Some minor amends to make browsing easier

function ll() { ls -la "$@"; }
function cd() { builtin cd "$@" && ls; }
function ..() { cd ..; }
alias gs="git status"
alias gc="git commit -am"
