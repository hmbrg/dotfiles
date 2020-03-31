#!/bin/sh
if command -v code >/dev/null; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi
	# mkdir -p "$VSCODE_HOME/User"

	# ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	# ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	# ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	# while read -r module; do
	# 	code --install-extension "$module" || true
	# done <"$DOTFILES/vscode/extensions.txt"

	echo "› VSCode: installing shan.code-settings-sync for syncing"
	echo "› don't forget to manually initialize the extension!"
	code --install-extension shan.code-settings-sync
fi
