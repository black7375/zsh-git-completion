complete ()
{
    # do nothing
    return 0
}

zstyle -T ':completion:*:*:git:*' tag-order && \
    zstyle ':completion:*:*:git:*' tag-order 'common-commands'

zstyle -s ":completion:*:*:git:*" script script
if [ -z "$script" ]; then
    local -a locations
    local e
    locations=(
        $(dirname ${funcsourcetrace[1]%:*})/git-completion.bash
        '/etc/bash_completion.d/git' # fedora, old debian
        '/usr/share/bash-completion/completions/git' # arch, ubuntu, new debian
        '/usr/share/bash-completion/git' # gentoo
        )
    for e in $locations; do
        test -f $e && script="$e" && break
    done
fi
GIT_SOURCING_ZSH_COMPLETION=y . "$script"
