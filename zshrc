# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(rbenv init -)"
eval "$(nodenv init -)"

source ~/.bash_profile