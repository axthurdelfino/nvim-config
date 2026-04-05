# Neovim Config

Personal Neovim setup focused on JavaScript, TypeScript, and Node.js development.

## Included

- `lazy.nvim` for plugin management
- `gruvbox` theme
- `lualine` statusline
- `which-key` keybinding hints
- `oil.nvim` file manager
- `neo-tree` sidebars for open buffers and full file tree
- `telescope.nvim` for file and text search
- `gitsigns.nvim` for Git indicators
- `nvim-treesitter` for syntax highlighting
- `nvim-lspconfig` + `mason.nvim` for LSP setup
- `nvim-cmp` + `LuaSnip` for autocompletion and snippets
- `conform.nvim` with Prettier format on save

## Main Keybinds

Leader key: `Space`

- `<leader>e` open buffers sidebar
- `<leader>E` open full file tree
- `<leader>o` open Oil
- `<leader>ff` find files
- `<leader>fg` live grep
- `<leader>w` save
- `<leader>q` quit window
- `gd` go to definition
- `gr` go to references
- `K` hover docs
- `<leader>ca` code action
- `<leader>rn` rename symbol

## Structure

- `init.lua`
- `lua/config/`
- `lua/plugins/`

## Notes

- `lazy-lock.json` is ignored on purpose.
- Best experience for TypeScript projects: install `typescript` locally in the project.
