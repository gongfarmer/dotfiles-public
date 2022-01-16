alias g=git
alias fd=fdfind
alias less="less -nrf" # -r: show the colors for ansi escapes in my rails logs
alias shuffle="ruby -e 'puts ARGF.readlines.sort_by { rand } rescue nil'"
alias youtube-dl-mp3='youtube-dl --extract-audio --audio-format mp3 '
alias age="ruby -rdate -e 'b=Date.parse(\"Sep 23 1974\"); p (Date.today-b) / 365.25'"

# Define shell function to do paragraph grep
# NOTE: -00 flag means slurp files in paragraph mode!  Remember that one.
# first perl cmd reads from STDIN, second reads from file.
grepp() { 
   [ $# -eq 1 ] && \
     perl -00ne 'if ( /'"$1"'/i ){$s = $_;$s =~ s/'"$1"'/\033[1;31m$&\033[0m/g; print $s}' || \
     perl -00ne 'if ( /'"$1"'/i ){$s = $_;$s =~ s/'"$1"'/\033[1;31m$&\033[0m/g; print $s}' < "$2";
 }

alias clock="osd_clock -t -F '%l:%M' -f -misc-fixed-medium-r-semicondensed--45-*-*-*-c-*-*-*"

# Print 'du -sh' output sorted by size:
alias dush="du --max-depth=1 -k | sort -nr | cut -f2 | xargs -d '\n' du -sh 2>/dev/null"
alias ethtop="echo its iftop stupid"

# Send git command to the .cfg repository from any location
# This command helps manage my bare git repo for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias j="vim ~/journal.txt"

# Use nvim if available
if command -v nvim &> /dev/null; then
  alias vi=nvim
fi

# vim: syntax=sh
