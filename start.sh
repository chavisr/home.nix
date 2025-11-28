#!/bin/sh
mkdir -p ~/.config/nix && echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf
nix run home-manager/release-25.05 -- switch --flake .#chavi
