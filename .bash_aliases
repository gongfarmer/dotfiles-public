alias g=git
alias fd=fdfind
alias less="less -nrf" # -r: show the colors for ansi escapes in my rails logs
alias shuffle="ruby -e 'puts ARGF.readlines.sort_by { rand } rescue nil'"
alias youtube-dl-mp3='youtube-dl --extract-audio --audio-format mp3 '
alias age="ruby -rdate -e 'b=Date.parse(\"Sep 23 1974\"); p (Date.today-b) / 365.25'"
alias ...='cd ../../..'

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

alias j="vi ~/journal.txt"
alias i="vi ~/info.txt"


# Use nvim if available
if command -v nvim &> /dev/null; then
  alias vi=nvim
fi

if command -v htop &> /dev/null; then
  alias top=htop
fi

# Sometimes I suck at typing
alias jbos="jobs"
alias josb="jobs"
alias hibs="jobs"
alias fgfg="fg"
alias gf="fg"
alias vo=vim
alias vmi=vim
alias bim=vim
alias mkae=make

alias run_ctags="ctags -R --c++-kinds=+p --extra=+f --langmap=c++:+.p ."
alias xc='xclip -selection clipboard'
alias xcb='base64 | xclip -selection clipboard'

# Make a webserver that serves everything under the current dir to
# localhost:8000, dirs can be browsed and files downloaded from a browser.
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

# Cool trick here: the escape means that $COLUMNS is not evaluated until the
# alias is used, instead of being evaluated when it is defined.  This means
# that the current width will be used, not the width that was set at shell
# startup!
alias sdiff="sdiff --width=\$COLUMNS"

alias uuid="ruby -rsecurerandom -e 'puts SecureRandom.uuid'"


# vim: syntax=sh
