

# Aliases
## ls to "exa"
LS='exa'

alias ls="$LS --color=always --group-directories-first"
alias la="$LS -a --color=always --group-directories-first"
alias ll="$LS -l --color=always --group-directories-first"
alias lh="$LS -lh --color=always --group-directories-first"
alias lla="$LS -lAh --group-directories-first --color=auto"
alias l.="$LS -Ad --group-directories-first --color=auto .*"

## *grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

## cat to bat
cat='bat --theme=Nord'

# Flag Additions
alias df='df -h'
alias free='free -m'

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

eval "$(starship init zsh)"