require("steetyj.core.options")
require("steetyj.core.keymaps")

if vim.g.vscode then
	require("steetyj.vscode.settings")
	return
else
	require("steetyj.plugins-setup")
	require("steetyj.core.colorscheme")
	require("steetyj.plugins.comment")
	require("steetyj.plugins.nvim-tree")
	require("steetyj.plugins.lualine")
	require("steetyj.plugins.bufferline")
	require("steetyj.plugins.telescope")
	require("steetyj.plugins.nvim-cmp")
	require("steetyj.plugins.lsp.mason")
	require("steetyj.plugins.lsp.lspsaga")
	require("steetyj.plugins.lsp.lspconfig")
	require("steetyj.plugins.lsp.null-ls")
	require("steetyj.plugins.autopairs")
	require("steetyj.plugins.treesitter")
	require("steetyj.plugins.gitsigns")
	require("steetyj.plugins.alpha")
	require("steetyj.plugins.which-key")
	require("steetyj.plugins.toggleterm")
	require("steetyj.plugins.indent-blankline")
end
