return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 0.95,
      width = 120,
      height = 0.9,
      options = {
        number = false,
        relativenumber = false,
      },
    },
    options = {
      laststatus = 0,
    },
    plugins = {
      gitsigns = { enabled = false },
      tmux = { enabled = false },
    }
  }
}
