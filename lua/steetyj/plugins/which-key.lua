local status, wk = pcall(require, "which-key")
if not status then
	return
end

local conf = {
	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
	},
}

local opts = {
	mode = "n", -- Normal mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
	["w"] = { "<cmd>update!<CR>", "Save" },
	["q"] = { "<cmd>q!<CR>", "Quit" },

	b = {
		name = "Buffer",
		c = { "<Cmd>bd!<Cr>", "Close current buffer" },
		D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
	},

	z = {
		name = "Packer",
		c = { "<cmd>PackerCompile<cr>", "Compile" },
		i = { "<cmd>PackerInstall<cr>", "Install" },
		s = { "<cmd>PackerSync<cr>", "Sync" },
		S = { "<cmd>PackerStatus<cr>", "Status" },
		u = { "<cmd>PackerUpdate<cr>", "Update" },
	},

	f = {
		name = "Telescope",
		f = { "<cmd>Telescope find_files<cr>", "Find files" },
		s = { "<cmd>Telescope live_grep<cr>", "Find string" },
		c = { "<cmd>Telescope grep_string<cr>", "Find string under cursor" },
		b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "List help tags" },
	},

	g = {
		name = "Git",
		c = { "<cmd>Telescope git_commits<cr>", "List all commits" },
		fc = { "<cmd>Telescope git_bcommits<cr>", "Commits for current file" },
		b = { "<cmd>Telescope git_branches<cr>", "Branches" },
		s = { "<cmd>Telescope git_status<cr>", "Status" },
	},
}

wk.setup(conf)
wk.register(mappings, opts)
