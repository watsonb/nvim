# 2023 The year of VIM

Going to try rocking VIM instead of VSCode this year.  This will be some notes and shit.

Most of this was inspired from `ThePrimeagen` [YouTube Video](https://www.youtube.com/watch?v=w7i4amO_zaE&list=TLPQMDUwMTIwMjNrIvG_IOiyDw&index=5)

## Install and Config

Here are notes on installation and configuration such that I can eventually automate all of it.

Rather than just using regular vim, I'm going to try NeoVIM as it seems to honor traditional
VIM but has more.

### Install

See [github](https://github.com/neovim/neovim/wiki/Installing-Neovim)

```bash
# no, distro releases are too old
sudo apt install neovim
```

You'll get nvim 0.4 (on Ubuntu 20.04 as of 2023-01-05) which is kind of old.
So hop over to [github releases](https://github.com/neovim/neovim/releases) and
download to ~/Downloads/neovim/app_images/vX.Y.Z, where X.Y.Z is some stable
release (v0.8.2 as of 2023-01-05).  Then,

```bash
mkdir -p ~/Downloads/neovim/app_images/v0.8.2
cd ~/Downloads/neovim/app_images/v0.8.2
wget https://github.com/neovim/neovim/releases/download/v0.8.2/nvim.appimage
chmod +x nvim.appimage
sudo cp nvim.appimage /usr/local/bin/nvim
```

#### Some Dependencies

Maybe ThePrimeagen has shit already configured on his systems but, for me to
follow along I needed the following:

1. Some NodeJS environment.  Use NVM and install a default nodejs/npm
   environment that will always be active in your shell.  Then:

   `npm install tree-sitter -g`
   `npm install tree-sitter-cli -g`

2. Also need ripgrep?

   `sudo apt install riipgrep`

3. Clone Packer package manager

   `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

### Config

I think I'll just type my commands here with some notes?  Then I'll come back
and clean up.  Fuck it, make it a GitHub repo and clone it.

```bash
cd ~/.config
git clone git@github.com:watsonb/nvim.git
```

### Post Config

Until I can figure out how to codify all of the language servers I want into
the lsp-zero config, we can use Mason to interactively install some of them.

From within an nvim session:

`:Mason<enter>`

- Brings up a list of language servers
- Scroll up/down the list to find what you want
- Press `i` on the selected servers to install it.

I installed the following:

- ansible-language-server
- bash-language-server
- dockerfile-language-server
- python-lsp-server
- yamllint

The others are part of the lsp-zero config (in this repo) but the names in the
config don't necessarily translate to those listed interactively.


# Plugins installed/used in this setup

Here is a list of the current plugins installed and used in my setup (see
~/.config/nvim/lua/ben/packer.lua)

- wbthomason/packer.nvim
- nvim-telescope/telescope.nvim
- bluz71/vim-moonfly-colors
- nvim-treesitter/nvim-treesitter
- nvim-treesitter/playground
- theprimeagen/harpoon
- mbbill/undotree
- tpope/vim-fugitive
- VonHeikemen/lsp-zero.nvim
- lukas-reineke/indent-blankline.nvim

# Custom Keymaps and Shit

Here are some custom keymaps and nvim settings I've configured for my experience

## Global

Map the leader key to the spacebar (" ")

> $NVIM == ~/.config/nvim

## Normal Mode

|keymap     |file                   |description|
|:---------:|:----------------------|:----------|
|<leader>pv |$NVIM/lua/ben/remap.lua|Opens vim's netrw file Explorer|
|J          |$NVIM/lua/ben/remap.lua|append line below you to current line, but keep cursor at beginning |
|<C-d>      |$NVIM/lua/ben/remap.lua|half page jump down, keep cursor in middle |
|<C-u>      |$NVIM/lua/ben/remap.lua|half page jump up, keep cursor in middle |
|n          |$NVIM/lua/ben/remap.lua|keep search terms in middle of screen |
|N          |$NVIM/lua/ben/remap.lua|keep search terms in middle of screen |
|<leader>y  |$NVIM/lua/ben/remap.lua|yank selected to system clipboard |
|<leader>Y  |$NVIM/lua/ben/remap.lua|yank selected to system clipboard |
|<leader>d  |$NVIM/lua/ben/remap.lua|delete clipboard? |
|Q          |$NVIM/lua/ben/remap.lua|no operation |
|<C-f>      |$NVIM/lua/ben/remap.lua|new tmux window? |
|<leader>f  |$NVIM/lua/ben/remap.lua|format buffer? |
|<C-k>      |$NVIM/lua/ben/remap.lua|quick fix next |
|<C-j>      |$NVIM/lua/ben/remap.lua|quick fix previous |
|<leader>k  |$NVIM/lua/ben/remap.lua|quick fix next |
|<leader>j  |$NVIM/lua/ben/remap.lua|quick fix previous |
|<leader>s  |$NVIM/lua/ben/remap.lua|replace word that you're on |
|<leader>x  |$NVIM/lua/ben/remap.lua|make current file executable |
|<leader>gs |$NVIM/after/plugin/fugitive.lua|pull up nvim's Git integration |
|<leader>a  |$NVIM/after/plugin/harpoon.lua|add a file to harpoon |
|<C-e>      |$NVIM/after/plugin/harpoon.lua|toggle UI quick menu |
|<C-h>      |$NVIM/after/plugin/harpoon.lua|navigate to file 1 |
|<C-t>      |$NVIM/after/plugin/harpoon.lua|navigate to file 2 |
|<C-n>      |$NVIM/after/plugin/harpoon.lua|navigate to file 3 |
|<C-s>      |$NVIM/after/plugin/harpoon.lua|navigate to file 4 |
|gd |$NVIM/after/plugin/lsp.lua|Only in current buffer: jump to definition |
|K |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|<leader>vws |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|<leader>vd |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|[d |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|]d |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|<leader>vca |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|<leader>vrr |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|<leader>vrn |$NVIM/after/plugin/lsp.lua|Only in current buffer:  |
|<leader>pf  |$NVIM/after/plugin/telescope.lua|Find project files |
|<leader>ps  |$NVIM/after/plugin/telescope.lua|Grep for string |
|<C-p>       |$NVIM/after/plugin/telescope.lua|Search in Git files |

## Visual Mode

|keymap     |file                   |description|
|:---------:|:----------------------|:----------|
|J          |$NVIM/lua/ben/remap.lua|Moves current highlight down|
|K          |$NVIM/lua/ben/remap.lua|Moves current highlight up|
|<leader>y  |$NVIM/lua/ben/remap.lua|yank selected to system clipboard |
|<leader>d  |$NVIM/lua/ben/remap.lua|delete clipboard? |
|<leader>p  |$NVIM/lua/ben/remap.lua|paste over selected and keep paste content in register. |
| |$NVIM/lua/ben/remap.lua| |

## Insert Mode

|keymap     |file                   |description|
|:---------:|:----------------------|:----------|
|<C-c>      |$NVIM/lua/ben/remap.lua|Ctrl+c does same as Esc|
|<C-p>      |$NVIM/after/plugin/lsp.lua|goto previous LSP suggestion |
|<C-n>      |$NVIM/after/plugin/lsp.lua|goto next LSP suggestion |
|<C-y>      |$NVIM/after/plugin/lsp.lua|use selected LSP suggestion |
|<C-Space   |$NVIM/after/plugin/lsp.lua|toggle LSP popup |
|<C-h>      |$NVIM/after/plugin/lsp.lua|signature help |
| |$NVIM/after/plugin/lsp.lua| |
| |$NVIM/after/plugin/lsp.lua| |

