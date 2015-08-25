[[ -e "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# PATH setup
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.local/bin" # Add RVM to PATH for scripting

# powerline
powerline_path=$(python -c 'import pkgutil; print pkgutil.get_loader("powerline").filename' 2>/dev/null)
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. ${powerline_path}/bindings/bash/powerline.sh

# aliases
alias be="bundle exec"
alias g=git
alias ll="ls -lh"
alias la="ls -alh"
alias lrt="ls -lrth"


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
# Ubuntu
elif [ "$(uname)" = "Linux" ]; then
  # dir colors for ubuntu
  eval `dircolors ~/src/dircolors-solarized/dircolors.ansi-dark`
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
