# hmbrg dotfiles

## Installation

### Dependencies

First, make sure you have all those things installed:

- `git`: to clone the repo (installed automatically on macOS)
- `curl`: to download some stuff (preinstalled on macOS)
- `tar`: to extract downloaded stuff (preinstalled on macOS)
- `zsh`: to actually run the dotfiles (preinstalled on macOS)
- `sudo`: some configs may need that (preinstalled on macOS)

### Install

Then, run these steps:

```console
$ git clone https://github.com/hmbrg/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./script/bootstrap
$ zsh # or just close and open your terminal again.
```

> All changed files will be backed up with a `.backup` suffix.

### Installing new software and maintenance
All software installed on the machine should be specified in the `software/Brewfile`.
Use `dot_update` to install and update software.

Useful command:
-  Check what software is installed but not listed in the `Brewfile`. Use `--force` to uninstall.
  ```console
  $ brew bundle cleanup
  ```


### Good to know
- install.sh should check if application is already installed 
  
  ```bash
  if command -v code >/dev/null; then
    # CODE GOES HERE
  fi
  ```

### macOS defaults

macOS defaults get configured when running the bootstrap script.

And logging out and in again/restart.

### Themes and fonts being used

Theme is **[Dracula](https://draculatheme.com)** and the font is
**Source Code Pro Light**.

## Further help:

- [Personalize your configs](/docs/PERSONALIZATION.md)
- [Understand how it works](/docs/PHILOSOPHY.md)
- [License](/LICENSE.md)

## Contributing

Feel free to contribute. Pull requests will be automatically
checked/linted with [Shellcheck](https://github.com/koalaman/shellcheck)
and [shfmt](https://github.com/mvdan/sh).

