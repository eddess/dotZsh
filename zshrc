# -*-sh-*-
	
# USe 256 colors
export TERM="xterm-256color"

# Path to Home of my ZSH configs
MY_ZSH=$HOME/.zsh

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
plugins=(git colored-man)

# Set name of the theme to load.
# ZSH_THEME="Soliah"

source $ZSH/oh-my-zsh.sh
# ------------------------------------------------------
# Customize to your needs...

source $MY_ZSH/zsh_theme

# ------------------------------------------------------
# Program settings

# Use ssh with pageant

if [[ `uname -o` == "Cygwin" ]]
then
	eval $(ssh-pageant -ra /tmp/.ssh-pageant)
fi
