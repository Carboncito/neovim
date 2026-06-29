if vim.treesitter and vim.treesitter.language then
    if not vim.treesitter.language.ft_to_lang then
        vim.treesitter.language.ft_to_lang = vim.treesitter.language.get_lang or function(ft)
            return ft
        end
    end
end

require("config.lazy")
require("config.default-values")

vim.filetype.add({
    extension = {
        prisma = "prisma",
    },
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "prisma",
    callback = function(args)
        pcall(function()
            require("nvim-treesitter.highlight").attach(args.buf, "prisma")
        end)
    end,
})