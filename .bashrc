source /home/vcap/.bashrc

# Needed for apt-buildpack install of psql
export PERLLIB=/home/vcap/deps/0/apt/usr/share/perl5
export PATH="/home/vcap/deps/0/apt/usr/lib/postgresql/9.6/bin:${PATH}"

# Get connected quickly
alias psql='`python ~/vcap.py --psql`'
alias redis='`python ~/vcap.py --redis`'
