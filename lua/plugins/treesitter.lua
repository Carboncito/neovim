return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local nvm_bin = vim.fn.expand("$HOME/.nvm/versions/node/v22.13.0/bin")
        vim.env.PATH = nvm_bin .. ":" .. vim.env.PATH

        require("nvim-treesitter").setup({
            ensure_installed = {
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "lua",
                "bash",
                "tsx",
                "markdown",
                "prisma"
            },
            auto_install = true,
            highlight = {
                enable = true,
            },
        })

        vim.filetype.add({
            extension = {
                prisma = "prisma",
            },
        })
    end,
}