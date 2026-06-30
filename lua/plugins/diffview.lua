return {
    "sindrets/diffview.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        local keymap = vim.keymap

        -- Open the repository diff
        keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", {
            desc = "Open Git Diff"
        })

        -- View file history
        keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", {
            desc = "Current File History"
        })

        -- View repository history
        keymap.set("n", "<leader>gH", "<cmd>DiffviewFileHistory<CR>", {
            desc = "Repository History"
        })

        -- Close Diffview
        keymap.set("n", "<leader>gq", "<cmd>DiffviewClose<CR>", {
            desc = "Close Diffview"
        })
    end
}
