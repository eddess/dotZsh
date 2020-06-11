for zf in ("zshenv", "zprofile", "zshrc", "zprofile", "zlogin", "zlogout") do
    if [ -f "${HOME}/.zsh/${zf}"]
        ln -s ${HOME}/.zsh/${zf} ${HOME}/.${zf}
    fi
done