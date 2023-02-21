vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "sumneko_lua" })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },
})

local lsp_manager = require("lvim.lsp.manager")
lsp_manager.setup("sumneko_lua", {
	filetypes = { "lua" },
	on_init = require("lvim.lsp").common_on_init,
	capabilities = require("lvim.lsp").common_capabilities(),
})
