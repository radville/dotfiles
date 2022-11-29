alias gcma="git checkout main"
alias gpu="git push --set-upstream origin"
alias rails=bin/rails

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

if [[ $GITHUB_REPOSITORY == "github/github" ]]; then
   export PATH=$(/workspaces/github/bin/npm bin -g):$PATH
fi
