-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Move Lines
map("n", "<A-e>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-u>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-e>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-u>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-e>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-u>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- keep cursor in the middle when half page jumping
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<PageDown>", "<C-d>zz")
map("n", "<PageUp>", "<C-u>zz")

-- keep curosr centered when iterating search results
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- use jk to exit insert mode
map("i", "jk", "<ESC>")

-- clear search highlights
map("n", "<leader>h", ":nohl<CR>")

-- delete single character without copying into register
map("n", "x", '"_x')

-- greatest renmap ever - past over text without overwriting register
map("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland - yank into system clipboard
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- ctrl-backspace in insert node to delete whole words
map("i", "<C-BS>", "<Esc>cvb")

map("n", "Q", "<nop>")
map("n", "<CR>", "ciw")

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<S-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<S-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

-- Move to window using the <ctrl> "ijkl" keys
map("n", "<C-n>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-e>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-u>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-i>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <alt> arrow keys
map("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- another option to split widow to the right
map("n", "<leader>\\", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>w\\", "<C-W>v", { desc = "Split window right", remap = true })
