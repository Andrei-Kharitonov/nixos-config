-- Keymaps
vim.g.mapleader = " " -- map <Leader> key
vim.g.maplocalleader = "\\"
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<Leader>/", ":noh<CR>", { silent = true })
vim.keymap.set("n", "<Tab>n", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<Tab>p", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "<Tab>d", ":bdelete<CR>", { silent = true })

-- Plugins keymaps
vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", { silent = true })
vim.keymap.set("n", "<Leader>e", ":Neotree focus<CR>", { silent = true })
vim.keymap.set("n", "<Leader>b", ":Neotree toggle buffers<CR>", { silent = true })
vim.keymap.set("n", "<Leader>s", ":Neotree toggle git_status<CR>", { silent = true })

vim.keymap.set("n", "<Leader>t", ":Telescope<CR>", { silent = true })
vim.keymap.set("n", "<Leader>w", ":WinShift<CR>", { silent = true })