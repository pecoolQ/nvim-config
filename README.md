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
user json
{
    "git.autofetch": true,
    "window.zoomLevel": 0,
    "editor.padding.top": 8,
    "editor.stickyScroll.enabled": false,
    "github.copilot.nextEditSuggestions.enabled": false,
    "extensions.experimental.affinity": {
        "asvetliakov.vscode-neovim": 1
    },
    "python.analysis.diagnosticsSource": "Pyright",
    "editor.fontFamily": "FiraCode Nerd Font, Consolas, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "editor.semanticHighlighting.enabled": false,
    "workbench.colorTheme": "Monokai Dimmed",
    "explorer.confirmDragAndDrop": false,

    "editor.inlineSuggest.enabled": false,
    "editor.inlayHints.enabled": "off",   
    "editor.codeLens": false,             
    "editor.scrollBeyondTop": false,
    "window.customTitleBarVisibility": "windowed"
}

keybinding.json 
// Place your key bindings in this file to override the defaults
[
  // Let VS Code handle copy/paste in INSERT mode
  {
    "key": "ctrl+c",
    "command": "editor.action.clipboardCopyAction",
    "when": "editorTextFocus && neovim.mode == 'insert'"
  },
  {
    "key": "ctrl+v",
    "command": "editor.action.clipboardPasteAction",
    "when": "editorTextFocus && neovim.mode == 'insert'"
  },

  // Forward to Neovim in NORMAL/VISUAL mode
  {
    "key": "ctrl+c",
    "command": "vscode-neovim.send",
    "when": "editorTextFocus && neovim.mode != 'insert'",
    "args": "<C-c>"
  },
  {
    "key": "ctrl+v",
    "command": "vscode-neovim.send",
    "when": "editorTextFocus && neovim.mode != 'insert'",
    "args": "<C-v>"
  },
  {
  "key": "ctrl+alt+i",
  "command": "editor.action.inlineSuggest.toggle",
  "when": "editorTextFocus"
  },
  {
    "key": "alt+o",
    "command": "editor.action.inlineSuggest.trigger",
    "when": "editorTextFocus && !editorHasSelection && !inlineSuggestionsVisible"
  },
  {
    "key": "alt+oem_5",
    "command": "-editor.action.inlineSuggest.trigger",
    "when": "editorTextFocus && !editorHasSelection && !inlineSuggestionsVisible"
  }
]

