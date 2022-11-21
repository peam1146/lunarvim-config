-- general
lvim.log.level = "warn"
vim.opt.relativenumber = true
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"

require('user.map')
require('user.terminal')
require('user.nvimtree')
require('user.treesitter')
require('user.alpha')
require('user.plugins')
