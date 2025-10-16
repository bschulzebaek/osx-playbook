source "$HOME/.atuin/bin/env"
source $HOME/.aliases
source $HOME/.prompt

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

for function in $HOME/.functions/??*; do
    source $(realpath $function)
done

if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.bash"
  source "$(fzf-share)/completion.bash"
fi

function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(\.*\)/ \1/'
}

# [[ -e ~/.prompt ]] && emulate sh -c 'source ~/.prompt'

setopt PROMPT_SUBST
PROMPT='%K{white}%F{black} %1~$(parse_git_branch) %k%f '

eval "$(atuin init zsh)"
eval "$(direnv hook bash)"
