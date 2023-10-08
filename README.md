# Egyvim
==============================================================================

EgyVim is not a distribution, it is just a config written by an Egyptian dev for Egyptian devs to make neovim act as IDE :) -> written by @Coptan99 and some suggestions from @Star-On-Github
* Thanks for @kickstart.nvim for inspiration.

## Features
* Most of things are configured out of the box
* Nice theme by `rose-pine`, `tokyonight`, `catppuccin`
* Tree file explorer by `nvim-tree`
* `Lspconfig` enabled by default
* Fuzzy finder using `Telescope.nvim`
* Mouse functionality enabled

## Installation
> **NOTE**
> Backup your configuration if exists
Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| MacOS | `$XDG_CONFIG_HOME/nvim`, '~/.config/nvim` |
| Windows | `%userprofile%\AppData\Local\nvim\` |

Clone EgyVim.nvim:

```sh
# on Linux and Mac
git clone https://github.com/Egypt-Open-Source/egyvim.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

```
# on Windows
git clone https://github.com/Egypt-Open-Source/egyvim.nvim.git %userprofile%\AppData\Local\nvim\
```
