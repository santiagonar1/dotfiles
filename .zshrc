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
export PATH=/home/santiago/.Programs/cmake/cmake/bin:$PATH
CONDA_PATH=$HOME/.miniconda3

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($CONDA_PATH'/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$CONDA_PATH/etc/profile.d/conda.sh" ]; then
        . "$CONDA_PATH/etc/profile.d/conda.sh"
    else
        export PATH="$CONDA_PATH/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Created by `userpath` on 2022-12-11 09:58:30
export PATH="$PATH:/home/santiago/.local/bin"

eval "$(atuin init zsh --disable-up-arrow)"
eval "$(starship init zsh)"
