return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local is_mac = vim.loop.os_uname().sysname == "Darwin"
        local nvm_bin = ""

        if is_mac then
            -- NVM in macOS (Homebrew)
            nvm_bin = vim.fn.expand("$HOME/.nvm/versions/node/v24.2.0/bin")
            -- Homebrew Mac
            vim.env.PATH = "/opt/homebrew/bin:/usr/local/bin:" .. vim.env.PATH
        else
            -- Linux Debian
            nvm_bin = vim.fn.expand("$HOME/.nvm/versions/node/v22.13.0/bin")
        end

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
                enable = true
            }
        })

        vim.filetype.add({
            extension = {
                prisma = "prisma"
            }
        })
    end
}
