#.bash_profile

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.cargo/env ]; then
  . "~/.cargo/env"
fi
