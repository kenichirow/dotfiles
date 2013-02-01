#export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH=/usr/local/bin:$PATH
