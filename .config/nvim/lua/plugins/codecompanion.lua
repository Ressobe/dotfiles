return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'gemini',
        model = 'gemini-2.5-flash',
      },
    },

    adapters = {
      http = {
        gemini = function()
          return require('codecompanion.adapters').extend('gemini', {
            env = {
              api_key = '',
            },
          })
        end,
      },
    },

    opts = {
      log_level = 'DEBUG'
    },
  },
}
