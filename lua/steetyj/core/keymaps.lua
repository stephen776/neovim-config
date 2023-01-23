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

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("n", "Q", "<nop>")

-- Resize window with alt+arrows
keymap.set("n", "<A-Up>", ":resize -5<CR>")
keymap.set("n", "<A-Down>", ":resize +5<CR>")
keymap.set("n", "<A-Left>", ":vertical resize -5<CR>")
keymap.set("n", "<A-Right>", ":vertical resize +5<CR>")

-- buffers
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<Tab>", ":bprevious<CR>")
keymap.set("n", "<S-Tab>", ":bnext<CR>")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
