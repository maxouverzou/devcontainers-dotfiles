#!/bin/sh
set -ex

nix profile install \
  nixpkgs#bat \
  nixpkgs#delta \
  nixpkgs#eza \
  nixpkgs#fish \
  nixpkgs#fzf \
  nixpkgs#nix-your-shell \
  nixpkgs#ripgrep \
  nixpkgs#starship

mkdir -p ~/.config/fish

cp etc/config.fish ~/.config/fish/config.fish
cp etc/starship.toml ~/.config/starship.toml
cp etc/gitconfig-tools ~/.gitconfig-tools
