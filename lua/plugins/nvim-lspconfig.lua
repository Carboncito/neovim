return {
 "neovim/nvim-lspconfig",
 dependencies = {
   "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",
   "hrsh7th/cmp-nvim-lsp",
 },
 config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte", "astro" },
        cmd = { "tailwindcss-language-server", "--stdio" },
        settings = {
            tailwindCSS = {}
        }
    })

    lspconfig.ts_ls.setup({
        capabilities = capabilities,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })
 end,
}