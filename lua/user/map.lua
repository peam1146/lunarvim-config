-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":bn<cr>"
lvim.keys.normal_mode["<S-h>"] = ":bp<cr>"
lvim.keys.normal_mode["<F1>"] = ":Telescope find_files<cr>"
lvim.keys.normal_mode["<S-k>"] = ":lua vim.lsp.buf.hover()<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["`"] = { "<cmd>ToggleTerm<CR>", "Terminal" }
lvim.builtin.which_key.mappings["w"] = { "<cmd>lua require('lvim.lsp.utils').format()<CR>", "Format document" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

lvim.builtin.which_key.mappings["r"] = {
  name = "Code Runner",
  r = { "<cmd>RunCode<CR>", "Run Code" },
  f = { "<cmd>RunFile<CR>", "Run File" },
  t = { "<cmd>RunFile tab<CR>", "Run in tab" },
  p = { "<cmd>RunProject<CR>", "Run the current project" },
  c = { "<cmd>RunClose<CR>", "Close runner" },
  F = { "<cmd>CRFiletype<CR>", "Open json with supported files" },
  P = { "<cmd>CRProjects<CR>", "Open json with list of projects" },
}

lvim.builtin.which_key.mappings["G"] = {
  name = "Gitsign",
  s = { "<cmd>Gitsigns toggle_signs<CR>", "Toggle signs" },
  n = { "<cmd>Gitsigns toggle_numhl<CR>", "Toggle numhl" },
  l = { "<cmd>Gitsigns toggle_linehl<CR>", "Toggle linehl" },
  w = { "<cmd>Gitsigns toggle_word_diff<CR>", "Toggle word_diff" },
}
