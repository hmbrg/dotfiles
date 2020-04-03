#!/bin/sh
# example file get updated during update proccess
[ "$(uname -s)" != "Darwin" ] && exit 0
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$DOTFILES/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
