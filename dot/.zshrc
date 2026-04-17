# Created by newuser for 5.9
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
autoload -Uz promptinit
promptinit
prompt fire
