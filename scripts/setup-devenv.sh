#!/bin/bash

if ! command -v nix &> /dev/null; then
    echo "Nix not found. Installing..."
    
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm
    
    . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
else
    echo "Nix is already installed. Skipping..."
fi

if ! command -v cachix &> /dev/null; then
    echo "Cachix not found. Installing..."
    
    nix-env -iA cachix -f https://cachix.org/api/v1/install

    echo "trusted-users = root ${USER}" | sudo tee -a /etc/nix/nix.conf && sudo pkill nix-daemon

    cachix use devenv
    cachix use shopware
else
  echo "Cachix is already installed. Skipping..."
fi

if ! command -v devenv &> /dev/null; then
    echo "Devenv not found. Installing..."
    
    nix-env -iA devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
else 
    echo "Devenv is already installed. Skipping..."
fi