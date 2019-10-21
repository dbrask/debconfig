# `ncal` is more flexible and less buggy than `cal` (which is currently also
# hard-coded to show Sunday as the first day of the week). `-b` makes it show
# the days of the month in the same general layout as `cal`.
alias cal='ncal -b'

# Coloured `ls` by default.
alias ls='ls --color=auto'

# Coloured `grep` by default.
alias grep='grep --color=auto'

# Topological overview of Git repository history.
alias glog='git log --graph --decorate --all --oneline'

# Open all files with current Git conflicts in a non-crippled Vim session.
alias vimconflict='cd -- $(git rev-parse --show-toplevel)'" && git diff --name-only | uniq | xargs bash -c '</dev/tty vim \""'$@'"\"' kaka && cd - >/dev/null"

# Recursively grep in Python files.
alias pygrep='grep -R --include="*.py"'
}

alias ggrep='git ls-files --recurse-submodules -z | xargs -0 grep --color=auto --line-number --exclude='\''*.js'\'' --exclude='\''*.css'\'


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'