# Fork from
# https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh

fpath+="${0:h}/src"
zstyle ':completion:*:*:git:*' script "${0:h}/zsh-git-completion.zsh"
