#!/usr/bin/env fish
if command -qa brew
	echo "› Homebrew is already installed"
else
	echo "› Homebrew not found, installing now..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
end

echo "› Installing software defined by Brewfile"
brew bundle --file "$DOTFILES/software/Brewfile"