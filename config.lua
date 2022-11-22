-- general
lvim.log.level = "warn"
vim.opt.relativenumber = true
lvim.format_on_save.enabled = true
lvim.colorscheme = "tokyonight"

reload("user.plugins")
reload("user.map")
reload("user.terminal")
reload("user.nvimtree")
reload("user.treesitter")
reload("user.alpha")
reload("user.lsp")
reload("user.fidget")
reload("user.lab")
reload("user.dial")
reload("user.zen-mode")
reload("user.inlay-hints")
