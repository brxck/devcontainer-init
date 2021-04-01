#!/usr/bin/env zsh

# Preserve vscode's special gitconfig
mv "$HOME/.gitconfig" "$HOME/.gitconfig.backup"

cd "$HOME"
yadm clone git@github.com:brxck/dotfiles.git -f --no-bootstrap
yadm reset --hard
yadm config local.class devcontainer
yadm alt
chmod +x "$HOME/.config/yadm/bootstrap"
yadm bootstrap

rm -f "$HOME/.gitconfig"
mv "$HOME/.gitconfig.backup" "$HOME/.gitconfig"
