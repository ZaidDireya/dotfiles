# Created by newuser for 5.8.1
PROMPT='%(?.%F{green}√.%F{red}x)%f %B%F{240}%3~%f%b %# '
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zaid/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# enable vim binding
bindkey -v 
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
export _JAVA_AWT_WM_NONREPARENTING=1;
