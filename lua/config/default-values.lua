vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.signcolumn = "yes"

-- font
vim.g.have_nerd_font = true

-- vim.cmd[[colorscheme tokyonight]]
vim.cmd[[colorscheme onedark]]
vim.opt.termguicolors = true

-- nav between tabs
vim.keymap.set("n", "<M-Left>", "gT", { desc = "Go to previous tab" })
vim.keymap.set("n", "<M-Right>", "gt", { desc = "Go to next tab" })

-- nav between splits
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to left split" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go to below split" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go to above split" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to right split" })

-- format actual files using active LSP (Prisma, TS, JSON)
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Formatear archivo actual' })

-- Show diagnostic error in a floating window
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })

-- Jump to previous/next diagnostic error or warning
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })

-- Redraw screen and clean highlight text
vim.keymap.set("n", "<leader>r", "<cmd>nohlsearch<CR><cmd>redraw!<CR>", { desc = "Redraw screen and clear search highlight" })

vim.opt.clipboard = "unnamedplus"
-- Clear the current sub-terminal buffer using Cmd + K
vim.keymap.set('t', '<D-k>', [[<C-\><C-n>:lua vim.api.nvim_chan_send(vim.b.terminal_job_id, "\x0c")<CR>]], { silent = true, desc = "Clear sub-terminal screen" })
