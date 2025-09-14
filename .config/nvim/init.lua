local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require 'config.autocmds'
require 'config.options'
require 'config.keymaps'

require('lazy').setup {
  require 'lsp.lazydev',
  require 'lsp.blink_cmp',
  require 'lsp.conform',
  require 'lsp.lspconfig',
  require 'lsp.treesitter',

  require 'plugins.colorscheme',
  require 'plugins.mini',
  require 'plugins.telescope',
  require 'plugins.autopairs',
  require 'plugins.debug',
  require 'plugins.gitsigns',
  require 'plugins.harpoon',
  require 'plugins.indent_line',
  require 'plugins.neo-tree',
  require 'plugins.transparent',
  require 'plugins.todo_comments',
  require 'plugins.lazygit',
  require 'plugins.easy-dotnet',
  require 'plugins.trouble',
  require 'plugins.wakatime',
  require 'plugins.codecompanion',
  require 'plugins.noice',
  require 'plugins.render-markdown',
  require 'plugins.obsidian',
}
