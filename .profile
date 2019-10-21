# Set user binary path.
export PATH="$HOME/bin:$PATH"

# Infinite history.
export HISTFILEZISE=-1
export HISTSIZE=-1

# Do not put duplicate lines or lines starting with space in the history.
export HISTCONTROL="ignoreboth"

# Vim is where it's at.
export EDITOR="/usr/bin/vim"

# Revert to the old standard behaviour of coreutils
# <https://www.mail-archive.com/coreutils@gnu.org/msg06921.html>
export QUOTING_STYLE="literal"

# Include possible local additions.
[ -r ~/.profile.local ] && . ~/.profile.local
