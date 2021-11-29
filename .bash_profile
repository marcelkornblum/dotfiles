[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marcel/projects/google-cloud-sdk/path.bash.inc' ]; then source '/Users/marcel/projects/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marcel/projects/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/marcel/projects/google-cloud-sdk/completion.bash.inc'; fi
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
