local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move selection up'})

keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Scroll down half page' })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Scroll up half page' })