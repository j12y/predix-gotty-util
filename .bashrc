source /home/vcap/.bashrc

# Needed for apt-buildpack install of psql
export PERLLIB="{$DEPS_DIR}/0/apt/usr/share/perl5"
export PATH="${DEPS_DIR}/0/apt/usr/local/bin:${DEPS_DIR}/0/apt/usr/lib/postgresql/9.6/bin:${PATH}"

# Needed for apt-buildpack install of python 2.7 and pip
export PYTHONHOME="${DEPS_DIR}/0/apt/usr"
export CPATH="${DEPS_DIR}/0/apt/usr/include/python2.7:${DEPS_DIR}/0/apt/usr/include"
export PYTHONIOENCODING=utf8

# Get connected quickly
alias psql='`python ~/vcap.py --psql`'
alias redis='`python ~/vcap.py --redis`'

# Preferences
export EDITOR=vim
export VISUAL=vim
HISTCONTROL=ignoreboth
shopt -s histappend
if [[ $- == *i* ]]
then
    bind '"\e[B": history-search-forward'
    bind '"\e[A": history-search-backward'
fi
