local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
	C = {
		name = "Typescript",
		l = {
			name = "Lab",
			l = { "<cmd>Lab code run<cr>", "Lab Run code" },
			s = { "<cmd>Lab code stop<cr>", "Lab Stop code" },
			p = { "<cmd>Lab code panel<cr>", "Lab Panel code" },
		},
		i = { "<cmd>TypescriptAddMissingImports<Cr>", "AddMissingImports" },
		o = { "<cmd>TypescriptOrganizeImports<cr>", "OrganizeImports" },
		u = { "<cmd>TypescriptRemoveUnused<Cr>", "RemoveUnused" },
		r = { "<cmd>TypescriptRenameFile<Cr>", "RenameFile" },
		f = { "<cmd>TypescriptFixAll<Cr>", "FixAll" },
		g = { "<cmd>TypescriptGoToSourceDefinition<Cr>", "GoToSourceDefinition" },
	},
}

which_key.register(mappings, opts)
