for zf in ("zshenv", "zprofile", "zshrc", "zprofile", "zlogin", "zlogout") do
    if [ -f "${ZSH_CONFIGS}/${zf}"]
        ln -s ${ZSH_CONFIGS}/zshrc ${HOME}/.${zf}
    fi
done