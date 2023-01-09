vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

-- move highlighted text up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle when half page jumping
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep curosr centered when iterating search results
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>h", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- greatest remap ever - past over text without overwriting register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland - yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- vim-maximizer - maximize/unmaximize current split

-- Resize with alt+arrows
keymap.set("n", "<A-Up>", ":resize -2<CR>")
keymap.set("n", "<A-Down>", ":resize +2<CR>")
keymap.set("n", "<A-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<A-Right>", ":vertical resize +2<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leadervtx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- buffers
keymap.set("n", "<leader>c", "<cmd>bd!<Cr>")
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<S-l>", ":bnext<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- dashboard
keymap.set("n", "<leader>;", "<cmd>Alpha<CR>")
