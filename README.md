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

### NeoVim
Configuration can be found in [dotfiles/.config/nvim/](dotfiles/.config/nvim/).

### Nix, Devenv, Cachix
These are installed via external installers (see `scripts/install-nix-devenv.sh`).

To uninstall them, run:
```bash
sudo /nix/nix-installer uninstall
```