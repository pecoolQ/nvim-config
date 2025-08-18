# AstroNvim Template

**NOTE:** This is for AstroNvim v5+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

## 🔧 Required Tools (Install with Chocolatey)

Make sure you have [Chocolatey](https://chocolatey.org/install) installed first.

Then run the following in an **Administrator PowerShell**:

```powershell
choco install -y neovim ripgrep fzf nerd-fonts-firacode nodejs
npm install -g pyright
```
### Tools Explained:
- `ripgrep` - Required for Telescope and fzf-lua live grep
- `fzf` - Fuzzy Finder backend used by fzf-lua
- `pyright` - Python language server (for LSP support)
- `fd` - Used by Telescope and fzf-lua for fast file finding
- `bat` - Used by fzf-lua for previewing files in finder


#### Start Neovim

```shell
nvim
```


