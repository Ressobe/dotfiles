-- return {
--   'vague2k/vague.nvim',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other plugins
--   config = function()
--     vim.cmd 'colorscheme vague'
--   end,
-- }

-- return {
--   'thesimonho/kanagawa-paper.nvim',
--   lazy = false,
--   priority = 1000,
--   init = function()
--     vim.cmd.colorscheme 'kanagawa-paper-ink'
--   end,
-- }

return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    vim.cmd 'colorscheme catppuccin-mocha'
  end,
}
