local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  'jose-elias-alvarez/null-ls.nvim',

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  'nvim-telescope/telescope-file-browser.nvim',
  "ThePrimeagen/harpoon",

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    run = 'TSUpdate'
  },


  "folke/zen-mode.nvim",


  { 'numToStr/Comment.nvim', opts = {} },

  'xiyaowong/transparent.nvim',

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  'windwp/nvim-ts-autotag',

  'lewis6991/gitsigns.nvim',

  {
    'glepnir/oceanic-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[ colorscheme oceanic_material ]]
    end
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
      filetype_exclude = { "dashboard" },
    },
  },

  'onsails/lspkind.nvim',
})
