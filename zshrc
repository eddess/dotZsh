# -*-sh-*-
	
# USe 256 colors
export TERM="xterm-256color"

# Path to Home of my ZSH configs
MY_ZSH=$HOME/.zsh

# history
export HISTSIZE=2000 
setopt hist_ignore_all_dups
setopt hist_ignore_space

# --------------------------------------------------
# Oh-my ZSH configuration
# Path to your oh-my-zsh configuration.
ZSH=$MY_ZSH/oh-my-zsh

# Disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# annoying command correction
DISABLE_CORRECTION="true"

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git colored-man svn)

# Set name of the theme to load.
# ZSH_THEME="Soliah"

source $ZSH/oh-my-zsh.sh
# ------------------------------------------------------
# Customize ZSH

# theme
source $MY_ZSH/zsh_theme

# syntax highlighting like fish shell
source $MY_ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# completion options
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'
zstyle ':completion:*:*:*:default' menu yes select
zstyle ':completion:*:*:default' force-list always
export ZLSCOLORS="${LS_COLORS}"
zmodload  zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31' 
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric


# ------------------------------------------------------
# Program settings

# local profile
if [ -f ~/.profile ]; then
	source ~/.profile
fi

PERL_MB_OPT="--install_base \"/cygdrive/d/configs/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/cygdrive/d/configs/perl5"; export PERL_MM_OPT;
