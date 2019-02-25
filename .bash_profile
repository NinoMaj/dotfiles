export PATH=$PATH:$HOME/bin
. .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
