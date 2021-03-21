# -*-sh-*-

# Path to Home of my ZSH configs
ZSH_CONFIGS=${HOME}/.zsh

# history
export HISTSIZE=2000
setopt hist_ignore_all_dups
setopt hist_ignore_space

# --------------------------------------------------
# Oh-my ZSH configuration
# Path to your oh-my-zsh configuration.
ZSH=${ZSH_CONFIGS}/oh-my-zsh

# Disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# annoying command correction
DISABLE_CORRECTION="true"

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git colored-man-pages history-substring-search docker docker-compose docker-machine)

source $ZSH/oh-my-zsh.sh
# ------------------------------------------------------
# Customize ZSH

# theme
source ${ZSH_CONFIGS}/zsh_theme

# extra completion options for zsh
fpath=(${ZSH_CONFIGS}/zsh-completions/src $fpath)

# syntax highlighting like fish shell
source ${ZSH_CONFIGS}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history substring highlighting
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=magenta,bold'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=''

# LS colors
export LS_COLORS="di=34:ln=35:so=31:pi=33:ex=32:bd=1;34:cd=1;34:su=1;32:sg=1;32:tw=1;36:ow=1;36"
export LSCOLORS="exfxbxdxcxExExCxCxGxGx"
export ZLSCOLORS="${LS_COLORS}"

# completion options
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'
zstyle ':completion:*:*:*:default' menu yes select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

zmodload  zsh/complist

# ------------------------------------------------------
# Program settings

# local profile
if [ -f ~/.profile ]; then
	source ~/.profile
fi


# define function to move stuff to OsX trash
trash() {
	command mv "$@" ~/.Trash;
}

#   extract:  Extract most known archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Editor settings
export VISUAL="vim"
export EDITOR=$VISUAL
