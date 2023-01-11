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
	[";"] = { "<cmd>Alpha<CR>", "Show Dashboard" },
	["e"] = { ":NvimTreeToggle<CR>", "Toggle file explorer" },
	["w"] = { "<cmd>update!<CR>", "Save" },
	["q"] = { "<cmd>q!<CR>", "Quit" },
	["h"] = { ":nohl<CR>", "Clear search highlights" },
	["p"] = { [["_dP]], "Paste over selection without overwriting register", mode = "x" },
	["y"] = { [["+y]], "Yank into system clipboard", mode = "v" },
	["Y"] = { [["+Y]], "Yank into system clipboard", mode = "v" },

	b = {
		name = "Buffer",
		c = { "<Cmd>bd!<Cr>", "Close current buffer" },
		D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
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

	s = {
		name = "Windows",
		v = { "<C-w>v", "Split window vertically" },
		h = { "<C-w>s", "Split window horizontally" },
		e = { "<C-w>=", "Make splits equal width" },
		x = { ":close<CR>", "Close current window" },
		m = { ":MaximizerToggle<CR>", "Maximize current window" },
	},

	t = {
		name = "Tabs",
		o = { ":tabnew<CR>", "Open new tab" },
		x = { ":tabclose<CR>", "Close current tab" },
		n = { ":tabn<CR>", "Go to next tab" },
		p = { ":tabp<CR>", "Go to prev tab" },
	},

	z = {
		name = "Packer",
		c = { "<cmd>PackerCompile<cr>", "Compile" },
		i = { "<cmd>PackerInstall<cr>", "Install" },
		s = { "<cmd>PackerSync<cr>", "Sync" },
		S = { "<cmd>PackerStatus<cr>", "Status" },
		u = { "<cmd>PackerUpdate<cr>", "Update" },
	},
}

wk.setup(conf)
wk.register(mappings, opts)
