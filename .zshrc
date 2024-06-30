# Prompt
zstyle ':vcs_info:git:*' formats '%F{3}@%b%f '
setopt promptsubst
PROMPT='%F{5}%~%f ${vcs_info_msg_0_}$ '
autoload -Uz vcs_info && precmd() { vcs_info }

# Aliases
alias v="$EDITOR"
alias d="nr dev"
alias gs="git status"
alias gf="git diff"
alias gff="gf HEAD"
alias ga="git add"
alias gm="git commit -m"
alias gl="git log"
alias tb="nc termbin.com 9999"

# Completions
# Brew
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

# Plugins
source $ZPLUG_HOME/init.zsh
zplug "jeffreytse/zsh-vi-mode"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
# if ! zplug check; then; zplug install; fi
zplug load

# Debug
# timezsh() {
#   shell=${1-$SHELL}
#   for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
# }
