# 🧠 Neovim Config by Carboncito

This is my personal Neovim configuration. It's focused on productivity, a clean look, and modern development features like LSP, autocompletion, themes, and more.

## 📁 Structure

```bash
~/.config/nvim
├── init.lua                    # Main configuration file
└── lua/                        # Modular Lua configs
    ├── config                  # Main configuration lazy file
        └── lazy.lua
    ├── configs                 # Key configuration
        └── default-values.lua
    └── plugins                 # All plugins
