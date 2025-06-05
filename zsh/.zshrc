plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    colored-man-pages
    zsh-navigation-tools
)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


###########################################
#                SETTINGS                 #
###########################################

# Export HOSTNAME variable (compatibility with bash)
export HOSTNAME=$(hostname)

# Do an ls after cp
function cd {
    builtin cd "$@" && ls
}

# Alias git commands
alias gp="git pull --prune --recurse-submodules"
alias gc="git commit"
alias ga="git add"
alias gb="git branch"
alias gs="git status"
alias gl="git log"
alias goc="git checkout"
alias gd="git diff"

# Cling-tidy fix for ZSH. See: 
# https://stackoverflow.com/questions/62266965/clang-tidy-resolving-no-match-error-when-adding-arguments
alias clang-tidy='noglob clang-tidy'

# Use VIM mode
bindkey -v

# Env. variables
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.programs/cmake/cmake/bin:$PATH
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
fi

. "$HOME/.atuin/bin/env"

# Created by `userpath` on 2022-12-11 09:58:30
export PATH="$PATH:/home/santiago/.local/bin"

eval "$(atuin init zsh --disable-up-arrow)"
eval "$(starship init zsh)"
