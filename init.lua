require 'bigcaggus.leader'
require 'bigcaggus.remap'
require 'bigcaggus.opts'
require 'bigcaggus.autocmd'

--Lazy
-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
-- NOTE: Plugins can also be added by using a table,
-- with the first argument being the link and the following
-- keys can be used to configure plugin behavior/loading/etc.
-- Use `opts = {}` to force a plugin to be loaded.

require('lazy').setup({

  { import = 'bigcaggus.plugins' },

  -- Self explanatory
  require 'bigcaggus.plugins.debug',

  --Line indenting
  require 'bigcaggus.plugins.indent_line',

  -- Displays tooltips for buttons
  require 'bigcaggus.plugins.which-key',

  --Linting, shows errors in code before compile time
  require 'bigcaggus.plugins.lint',

  -- Detect tabstop and shiftwidth automatically
  require 'bigcaggus.plugins.vim-sleuth',

  --Creates brackets pairs
  require 'bigcaggus.plugins.autopairs',

  -- Tree file system
  require 'bigcaggus.plugins.neo-tree',

  -- adds gitsigns recommend keymaps
  require 'bigcaggus.plugins.gitsigns',

  -- Primeagen's vim be good, a game for learning vim
  'ThePrimeagen/vim-be-good',

  -- Syntax highlighting
  require 'bigcaggus.plugins.treesitter',

  --Fuzzy Finder
  require 'bigcaggus.plugins.telescope',

  --LSP stuff
  require 'bigcaggus.plugins.lspconfig',

  -- "gc" to comment visual regions/line
  { 'numToStr/Comment.nvim', opts = {} },

  --Autoformat
  require 'bigcaggus.plugins.conform',

  --Autcomplete
  require 'bigcaggus.plugins.nvim-cmp',

  -- Comments
  require 'bigcaggus.plugins.todo-comments',

  -- A series of small plugins. Take a look at the lua file
  require 'bigcaggus.plugins.mini',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
