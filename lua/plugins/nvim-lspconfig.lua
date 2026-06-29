return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "b0o/SchemaStore.nvim",
    },
    config = function()
        require("mason").setup()
        local mason_lspconfig = require("mason-lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        mason_lspconfig.setup({
            handlers = {
                function(server_name)
                    vim.lsp.config(server_name, { capabilities = capabilities })
                end,

                ["tailwindcss"] = function()
                    vim.lsp.config("tailwindcss", {
                        capabilities = capabilities,
                        filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte", "astro" },
                        cmd = { "tailwindcss-language-server", "--stdio" },
                        settings = {
                            tailwindCSS = {}
                        }
                    })
                end,

                ["ts_ls"] = function()
                    vim.lsp.config("ts_ls", {
                        capabilities = capabilities,
                        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
                    })
                end,
                ["jsonls"] = function()
                    vim.lsp.config("jsonls", {
                        capabilities = capabilities,
                        settings = {
                            json = {
                                schemas = require("schemastore").json.schemas(),
                                validate = { enable = true },
                            },
                        },
                    })
                end,
            }
        })
    end,
}