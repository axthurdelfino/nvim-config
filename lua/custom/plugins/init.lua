return {
  -- {
  --   'github/copilot.vim',
  -- },
  {
    'ray-x/go.nvim',
    dependencies = { -- optional packages
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function() require('go').setup() end,
    event = { 'CmdlineEnter' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    'aznhe21/actions-preview.nvim',
    config = function() vim.keymap.set({ 'v', 'n' }, '<M-Enter>', require('actions-preview').code_actions) end,
  },
  {
    'windwp/nvim-ts-autotag',
    opts = {},
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  { 'tpope/vim-sleuth' },
  { 'tpope/vim-surround' },
  {
    'saecki/crates.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require('crates').setup() end,
  },
  {
    'smjonas/inc-rename.nvim',
    keys = {
      {
        'gr',
        function() return ':IncRename ' .. vim.fn.expand '<cword>' end,
        mode = 'n',
        desc = 'Rename',
        silent = true,
        noremap = true,
        expr = true,
      },
    },
    config = true,
  },
  {
    'mistricky/codesnap.nvim',
    enabled = vim.fn.has 'win32' == 0,
    build = 'make',
    opts = {
      has_breadcrumbs = false,
      has_line_number = true,
      watermark = '',
    },
  },
  {
    'm-demare/hlargs.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {},
  },
  {
    'RRethy/vim-illuminate',
    config = function()
      require('illuminate').configure {
        under_cursor = false,
        filetypes_denylist = {
          'NvimTree',
        },
      }
    end,
  },
  {
    'petertriho/nvim-scrollbar',
    config = true,
  },
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true,
    keys = {
      {
        '<M-2>',
        function() require('oil').open() end,
        mode = 'n',
      },
    },
  },
  {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
  },
  {
    'ethanholz/nvim-lastplace',
    config = function() require('nvim-lastplace').setup {} end,
  },
  {
    'iamcco/markdown-preview.nvim',
    build = function() vim.fn['mkdp#util#install']() end,
  },
}
