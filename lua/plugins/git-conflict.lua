return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true,
      default_commands = true,
      disable_diagnostics = false,
      list_opener = "copen",
      highlights = {
        incoming = "DiffAdd",
        current = "DiffText",
      },
    })
    vim.keymap.set("n", "<leader>gco", "<cmd>GitConflictChooseOurs<CR>")
    vim.keymap.set("n", "<leader>gct", "<cmd>GitConflictChooseTheirs<CR>")
    vim.keymap.set("n", "<leader>gcb", "<cmd>GitConflictChooseBoth<CR>")
    vim.keymap.set("n", "<leader>gcn", "<cmd>GitConflictChooseNone<CR>")
  end,
}
