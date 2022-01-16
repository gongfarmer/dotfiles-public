alias g=git
alias fd=fdfind
alias less="less -nrf" # -r: show the colors for ansi escapes in my rails logs

# Send git command to the .cfg repository from any location
# This command helps manage my bare git repo for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Use nvim if available
if command -v nvim &> /dev/null; then
  alias vi=nvim
fi

# vim: syntax=sh
