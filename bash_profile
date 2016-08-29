[[ -e "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# PATH setup
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.local/bin" # Add RVM to PATH for scripting

ulimit -n 1024

export PROMPT_DIRTRIM=3
source ~/.bash-powerline.sh

# aliases
alias be="bundle exec"
alias g=git
alias ll="ls -lh"
alias la="ls -alh"
alias lrt="ls -lrth"

# history
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S - "
shopt -s histappend
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=10000
HISTFILESIZE=100000

#editor
export VISUAL=vim
export EDITOR="$VISUAL"

##
# OS specific settings.
# OS X
if [ "$(uname)" = "Darwin" ]; then
  # completions
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  # fusion
  function fusion {
    /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion $1 ~/Documents/Virtual\ Machines.localized/fastlydev.vmwarevm nogui
  }
  # colored directories
  alias ls="ls -G"

  # vagrant
  alias vgsuspend="vagrant suspend 44ee573"
  alias vgstart="vagrant resume 44ee573"

  export NVM_DIR="/Users/leklund/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# Ubuntu
elif [ "$(uname)" = "Linux" ]; then
  # dir colors for ubuntu
  eval `dircolors ~/src/dircolors-solarized/dircolors.ansi-dark`
  export PATH="$PATH:$HOME/devel/bin" # add devel bin
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### iterm2
source ~/.iterm2_shell_integration.bash

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
