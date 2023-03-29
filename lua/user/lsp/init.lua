lvim.lsp.installer.setup.automatic_installation = true
lvim.lsp.diagnostics.virtual_text = false

require("user.lsp.languages.rust")
require("user.lsp.languages.go")
require("user.lsp.languages.python")
require("user.lsp.languages.js-ts")
require("user.lsp.languages.sh")
require("user.lsp.languages.lua")
require("user.lsp.languages.css")

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

-- local formatters = require("lvim.lsp.null-ls.formatters")
-- formatters.setup({
--   { command = "google_java_format", filetypes = { "java" } },
--   { command = "shfmt",              filetypes = { "sh", "zsh" } },
-- })

-- lvim.lsp.on_attach_callback = function(client, bufnr)
-- end

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "eslint_d", filetypes = { "javascript" } },
-- }
