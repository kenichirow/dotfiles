source ~/.git-prompt.sh

autoload colors
colors
autoload -U compinit
compinit
#autoload predict-on
#predict-on

bindkey -v
autoload predict-on
setopt auto_cd
setopt auto_pushd
setopt correct
setopt pushd_ignore_dups
setopt share_history
setopt nolistbeep
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history dat
setopt list_packed
setopt no_beep
setopt PROMPT_SUBST

RPROMPT="[%40<...<%~]" 
PROMPT='$(__git_ps1 ${fg[green]}" [%s]") ${reset_color}${fg[red]}→ ${reset_color}'
export=xterm-color


zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

alias ll="ls -l"
alias la="ls -la"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

. `brew --prefix`/etc/profile.d/z.sh


