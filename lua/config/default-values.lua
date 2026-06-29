vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.cmd[[colorscheme tokyonight]]
vim.opt.termguicolors = true

-- nav between tabs
vim.keymap.set("n", "<M-Left>", "gT", { desc = "Go to previous tab" })
vim.keymap.set("n", "<M-Right>", "gt", { desc = "Go to next tab" })

-- nav between splits
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to left split" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go to below split" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go to above split" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to right split" })