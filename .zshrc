###########################################
#                SETTINGS                 #
###########################################

# Export HOSTNAME variable (compatibility with bash)
export HOSTNAME=$(hostname)

# Do an ls after cp
function cd {
    builtin cd "$@" && ls
}

# Compress file
function comp {
    echo "Trying to compress $1"
    tar -czvf "$1".tar.gz "$1"
}

# Alias to youtube-dl (to best audio, use --audio-quality 0)
alias youtube="youtube-dl --extract-audio --audio-format mp3"
# Alias git commands
alias gp="git pull --prune --recurse-submodules"
alias gc="git commit"
alias ga="git add"
alias gb="git branch"
alias gs="git status"
alias gl="git log"
alias goc="git checkout"
alias gd="git diff"
# Cluster MPI
alias cluster="/home/santiago/git/hiwi_scripts/vmc-old/irm4"
# Cling-tidy fix for ZSH. See: 
# https://stackoverflow.com/questions/62266965/clang-tidy-resolving-no-match-error-when-adding-arguments
alias clang-tidy='noglob clang-tidy'

# Use VIM mode
bindkey -v

# Use to solve some problems with tilix (a.k.a terminix). We might
# have to create the symbolic link pointing to vte-x.xx.sh inside
# /etc/profile.d
# source /etc/profile.d/vte.sh

# Env. variables
export PATH=~/.scripts:$PATH
export LIKWID_LIB=/usr/local/lib
export LIKWID_INCLUDE=/usr/local/include
export GTAGSLABEL=pygments
export PATH=$PATH:/usr/local/go/bin

CONDA_PATH=
# Select options for laptop and work
if [[ $(hostname) == *"atsccs"* ]]; then
  CONDA_PATH=$HOME/.anaconda3
  export PATH=/home/ga85pun/git/Programs/aspectc++:$PATH
  export PATH=/home/ga85pun/git/Programs/cmake-3.22.3-linux-x86_64/bin:$PATH

  # TeX Live
  export PATH=/work/ga85pun/texlive/2021/bin/x86_64-linux:$PATH
  export MANPATH=/work/ga85pun/texlive/2021/texmf-dist/doc/man:$MANPATH
  export INFOPATH=/work/ga85pun/texlive/2021/texmf-dist/doc/info:$INFOPATH

  # Build irtss
  export IRTSS_PATH=/work_fast/ga85pun/git/irtss
else
  export PATH=/home/santiago/.Programs/aspectc++:$PATH
  export PATH=/home/santiago/.Programs/cmake/cmake/bin:$PATH
  export IRTSS_PATH=/home/santiago/git/irtss
  CONDA_PATH=$HOME/.miniconda3
fi

alias birtss="$IRTSS_PATH/tools/bin/build4platform.pl $IRTSS_PATH/platform/release.x86guest.generic-debug.pm"


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
