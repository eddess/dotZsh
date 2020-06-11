#!/bin/zsh
for zf in "zshenv" "zprofile" "zshrc" "zprofile" "zlogin" "zlogout" 
do
	[ -f "${HOME}/.zsh/${zf}" ] && ln -s ${HOME}/.zsh/${zf} ${HOME}/.${zf}
done
