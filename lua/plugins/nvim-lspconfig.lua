return {
    "neovim/nvim-lspconfig",
    dependencies = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp",
                    "b0o/SchemaStore.nvim"},
    config = function()
        require("mason").setup()
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        mason_lspconfig.setup({
            handlers = {
                -- Default handler for LSP servers installed via Mason
                function(server_name)
                    lspconfig[server_name].setup({
                        capabilities = capabilities
                    })
                end,

                -- Specific configuration for Tailwind CSS
                ["tailwindcss"] = function()
                    lspconfig.tailwindcss.setup({
                        capabilities = capabilities,
                        filetypes = {"html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact",
                                     "vue", "svelte", "astro"},
                        cmd = {"tailwindcss-language-server", "--stdio"},
                        settings = {
                            tailwindCSS = {}
                        }
                    })
                end,

                -- Specific configuration for TypeScript/JavaScript
                ["ts_ls"] = function()
                    lspconfig.ts_ls.setup({
                        capabilities = capabilities,
                        filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"}
                    })
                end,

                -- Specific configuration for JSON using SchemaStore plugin
                ["jsonls"] = function()
                    lspconfig.jsonls.setup({
                        capabilities = capabilities,
                        settings = {
                            json = {
                                schemas = require("schemastore").json.schemas(),
                                validate = {
                                    enable = true
                                }
                            }
                        }
                    })
                end,

                -- Specific configuration for Prisma ORM
                ["prismals"] = function()
                    lspconfig.prismals.setup({
                        capabilities = capabilities
                    })
                end
            }
        })
    end
}
