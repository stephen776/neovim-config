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
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland - yank into system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "Q", "<nop>")

-- Resize window with alt+arrows
keymap.set("n", "<A-Up>", ":resize -5<CR>")
keymap.set("n", "<A-Down>", ":resize +5<CR>")
keymap.set("n", "<A-Left>", ":vertical resize -5<CR>")
keymap.set("n", "<A-Right>", ":vertical resize +5<CR>")

-- buffers
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<leader>bc", "<cmd>bd!<Cr>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leadervtx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
