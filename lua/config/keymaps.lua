local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Shortcut
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>ù", ":source%<CR>", opts)
keymap("i", "jk", "<Esc>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- Window navigation
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<S-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- Navigate buffers
keymap("n", "<leader>l", ":bnext<CR>", opts)
keymap("n", "<leader>h", ":bprevious<CR>", opts)

-- DevDocs
keymap("n", "<leader>dv", ":DevdocsOpenFloat<CR>", opts)

-- Add a ";" in the end of line
vim.api.nvim_set_keymap("n", ",,", ":lua require('config.module').semicolon()<CR>", opts)

-- Close a buffers
vim.api.nvim_set_keymap("n", "<leader>x", ":BufferLinePickClose<CR>", opts)

vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true })
