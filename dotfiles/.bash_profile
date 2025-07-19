. ~/.bashrc

if [ -e /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

eval "$(direnv hook bash)"
eval "$(atuin init bash)"

. "$HOME/.atuin/bin/env"
