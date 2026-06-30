return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "ts_ls",
        "eslint",
        "lua_ls",
        "jsonls",
        "html",
        "cssls",
        "tailwindcss",
        "bashls",
        "yamlls",
        "dockerls",
      },
    })
  end,
}