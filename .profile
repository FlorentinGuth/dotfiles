# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# OPAM configuration
eval `opam config env`
. /home/kegnarok/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Go configuration
export GOPATH="$HOME/Projets/Go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by Anaconda3 installer
export PATH="/home/kegnarok/anaconda3/bin:$PATH"

# Haskell configuration
# Stack terminal completion
eval "$(stack --bash-completion-script stack)"

# Aliases:
alias reload='source ~/.profile'
