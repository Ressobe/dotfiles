return {

  {
    "olimorris/onedarkpro.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    priority = 1000, -- Ensure it loads first
  },

  {
    "Shatur/neovim-ayu",
    priority = 1000, -- Ensure it loads first
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-dark",
    },
  },
}
