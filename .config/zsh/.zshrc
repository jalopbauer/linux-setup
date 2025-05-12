# Aliases
## ls
alias ls="ls --color=always --group-directories-first"
alias la="ls -a --color=always --group-directories-first"
alias ll="ls -l --color=always --group-directories-first"
alias lh="ls -lh --color=always --group-directories-first"
alias lla="ls -lAh --group-directories-first --color=auto"
alias l.="ls -Ad --group-directories-first --color=auto .*"

## *grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

## Git
alias g="git"
alias gb="git branch"
alias gp="git push"
alias gl="git pull"
alias gf="git fetch"
alias ga="git add"
alias gaa="git add all"
alias gck="git checkout"
alias gckb="git checkout -b"
alias gckm="git checkout master"

## Docker 
alias dce="docker-compose exec"
alias dcr="docker-compose restart"
alias dcu="docker-compose up"
alias dcupd="docker-compose up -d"
alias dcdn="docker-compose down"

## Other
alias df='df -h'
alias free='free -m'

# Prompt
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
add-zsh-hook precmd vcs_info

## Git formatting
zstyle ':vcs_info:git:*' formats '%F{cyan} %b%f'
zstyle ':vcs_info:*' enable git

## Enable prompt substitution
setopt prompt_subst

PROMPT='%F{magenta}%~%f
%(?.%F{green}.%F{red})❯%f '

RPROMPT='${vcs_info_msg_0_}'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
