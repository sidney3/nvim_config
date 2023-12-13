# Requirements
Ensure the following component versions:
- Node.js >= 18.0.1
- Python >= 3.0.0
- Neovim >= 0.8.0
- 

# Installation

## Main Setup
Clone this directory into `~/.config` and rename it to `nvim`.

You need to install the plugin manager, lazy.nvim. This can be done with
```
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/site/pack/lazy/start/lazy.nvim
```
If you choose to clone it into another directory, modfiy the directory noted at the top of `lua/plugins/init.lua` to whatever you choose.

Then run
```
nvim .
```

## Setting up code autocompletion

Run the following commands inside the `nvim` environment.
```
:CocInstall coc-tsserver
:CocInstall coc-clangd
```
To verify, open a `.ts` or `.cpp` file and run

```
:CocInfo
```




