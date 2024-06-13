vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>q', '<esc>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- quick resize of windows
vim.keymap.set("n", "<C-w> .", "10<C-w> >")
vim.keymap.set("n", "<C-w> ,", "10<C-w> <")

-- greatest remap ever
-- copy that does not replace current clipboard content
vim.keymap.set("x", "<leader>p", [["_dP]])
-- yank the whole line
vim.keymap.set("n", "<leader>Y", [["+Y]])
