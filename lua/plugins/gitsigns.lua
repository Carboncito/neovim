return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            signs = {
                add = {
                    text = "│"
                },
                change = {
                    text = "│"
                },
                delete = {
                    text = "_"
                },
                topdelete = {
                    text = "‾"
                },
                changedelete = {
                    text = "~"
                }
            },

            current_line_blame = true,
            current_line_blame_opts = {
                delay = 500
            }
        })

        local gs = require("gitsigns")

        -- Navigate between hunks
        vim.keymap.set("n", "]h", gs.next_hunk, {
            desc = "Next Git Hunk"
        })
        vim.keymap.set("n", "[h", gs.prev_hunk, {
            desc = "Previous Git Hunk"
        })
        -- Preview current hunk
        vim.keymap.set("n", "<leader>gp", gs.preview_hunk, {
            desc = "Preview Git Hunk"
        })
        -- Reset current hunk
        vim.keymap.set("n", "<leader>gr", gs.reset_hunk, {
            desc = "Reset Git Hunk"
        })
        -- Blame current line
        vim.keymap.set("n", "<leader>gb", gs.blame_line, {
            desc = "Git Blame"
        })
    end
}
