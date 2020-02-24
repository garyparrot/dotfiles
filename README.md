# Dotfiles

This dot file is managed by ``stow``, link each directory to specific path.

## restore

```shell
$ git clone https://github.com/garyparrot/dotfiles
# git clone git@github.com:garyparrot/dotfiles.git

$ cd dotfiles

# Change target directory to your XDG_CONFIG_HOME, or ~/.config for undefined
$ stow -t ~/.config awesomewm
$ stow -t ~/.config conky
$ stow -t ~/.config fish
$ stow -t ~/.config nvim
$ stow -t ~/.config picom
$ stow -t ~/.config rofi
```

## colorscheme

Different colorscheme is managed by independent git branch.
Each colorscheme should rebase to most recent master branch to share some common changes.
