# Some minor amends to make browsing easier

function ll() { ls -la "$@"; }
function cd() { builtin cd "$@" && ls; }
