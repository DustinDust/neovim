vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>q', '<esc>')
vim.keymap.set('n', '<C-s>', vim.cmd.write)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- quick resize of windows
vim.keymap.set("n", "<C-w> .", "10<C-w> >")
vim.keymap.set("n", "<C-w> ,", "10<C-w> <")

-- greatest remap ever
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y') -- yank motion
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d') -- delete motion
vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>pp', '"+p')   -- paste after cursor
vim.keymap.set('x', '<leader>p', [["_dP]]) -- paste without overwrite current clipboard

vim.api.nvim_set_keymap('t', '<Leader><ESC>', '<C-\\><C-n>', { noremap = true })
