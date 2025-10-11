-- Keymaps
vim.g.mapleader = " " -- map <Leader> key
vim.g.maplocalleader = "\\"
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<Leader>/", ":noh<CR>", { silent = true })
vim.keymap.set("n", "<Tab>n", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<Tab>p", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "<Tab>h", ":DelHiddenBufs<CR>")
vim.keymap.set("v", "<C-c>", "\"+y", { silent = true })
vim.keymap.set("i", "<C-v>", "<C-r>+", { silent = true })
vim.keymap.set("v", "<C-x>", "\"+d", { silent = true })

-- Plugins keymaps
vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", { silent = true })
vim.keymap.set("n", "<Leader>t", ":Telescope<CR>", { silent = true })
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", "<Leader>fg", ":Telescope git_status<CR>", { silent = true })
vim.keymap.set("n", "<Leader>w", ":WinShift<CR>", { silent = true })
vim.keymap.set("n", "<Tab>d", ":BufDel<CR>", { silent = true })
vim.keymap.set("n", "<Leader>`", ":ToggleTerm direction=horizontal<CR>", { silent = true })
vim.keymap.set("n", "<Leader>g", ":TermExec direction=float cmd=\"lazygit\"<CR>", { silent = true }) -- need instaled lazygit
vim.keymap.set("n", "<Leader>ph", ":NeovimProjectHistory<CR>", { silent = true })

-- Navigation between terminal and windows
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')