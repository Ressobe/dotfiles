return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    'folke/snacks.nvim',
  },
  lazy = false,
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {},
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
  end,
}
