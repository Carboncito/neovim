return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "lua",
                "bash",
                "tsx",
                -- "jsx",
                "markdown",
            },
            highlight = {
                enable = true,
                -- additional_vim_regex_highlighting = false,
            },
            autotag = {
                enable = true,
            },
        })
    end,
}
