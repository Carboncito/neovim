return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
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
            },
            highlight = {
                enable = true,
            },
        })
    end,
}