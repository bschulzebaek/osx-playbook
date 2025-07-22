# OSX Playbook
Automated MacOS setup for development using Ansible.

## Prerequisites
* [Homebrew](https://brew.sh/)
* [Git](https://git-scm.com/)
* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git ansible
```

## Installation
Using the make commands may require to run `xcode-select --install` beforehand.

```bash
git clone https://github.com/bschulzebaek/osx-playbook
cd osx-playbook

make install-private
# ansible-playbook -i "localhost," -c local playbook-private.yaml

# Or
make install-shopware
# ansible-playbook -i "localhost," -c local playbook-shopware.yaml
```

## Manual Steps

### Git User Email
Create a `.gitconfig.local` file to globally configure the git user.email option. This file will be autoloaded by the `.gitconfig` in this repository.

```
[user]
     email = <email>
```

### Application Shortcuts
Manually assign Raycast shortcuts to switch to specific applications. Hotkey settings can be found at `cmd+space` > `cmd+,` > "Extensions".

Setup Capslock as the "hyper" key in Raycast.

| Application | Shortcut    |
|-------------|-------------|
| Main Browser | `hyper + 1` |
| Main IDE     | `hyper + 2` |
| Terminal    | `hyper + 3` |
| Slack       | `hyper + 4` |

### Raycast Extensions

* [GitHub](https://raycast.com/raycast/github/)
* [Git Repos](https://raycast.com/moored/git-repos)
* [Bookmarks](https://raycast.com/raycast/browser-bookmarks)
* [System Monitor](https://raycast.com/hossammourad/raycast-system-monitor)

## Additional Information

### NeoVim
Configuration can be found in [dotfiles/.config/nvim/](dotfiles/.config/nvim/).

### Nix, Devenv, Cachix
These are installed via external installers (see `scripts/install-nix-devenv.sh`).

To uninstall them, run:
```bash
sudo /nix/nix-installer uninstall
```