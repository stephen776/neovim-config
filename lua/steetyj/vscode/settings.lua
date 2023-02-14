-- custom remaps for the vscode integration
local keymap = vim.keymap

-- whichkey
keymap.set("n", "<leader>", "<Cmd>call VSCodeNotify('whichkey.show)<CR>")
keymap.set("x", "<leader>", "<Cmd>call VSCodeNotify('whichkey.show)<CR>")
