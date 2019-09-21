# Fork from
# https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh

zstyle ':completion:*:*:git:*' script "${0:h}/src/git-completion.bash"
fpath+="${0:h}/src"
