return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            -- Open terminals at the bottom, similar to VS Code
            direction = "horizontal",
            -- Height of the terminal pane
            size = 15,
            -- Toggle the default terminal with Ctrl + \
            open_mapping = [[<C-\>]],
            hide_numbers = true,
            shade_terminals = true,
            -- Start in terminal (insert) mode
            start_in_insert = true,
            -- Allow the toggle mapping while in insert/terminal mode
            insert_mappings = true,
            terminal_mappings = true,
            -- Keep the same terminal size and mode between toggles
            persist_size = true,
            persist_mode = true,
            -- Do not close the terminal buffer when the process exits
            close_on_exit = false
        })
        function _G.set_terminal_keymaps()
            local opts = {
                buffer = 0
            }
            -- Exit terminal mode with Escape
            vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
        end

        vim.api.nvim_create_autocmd("TermOpen", {
            pattern = "term://*",
            callback = function()
                set_terminal_keymaps()
            end
        })

        -- Toggle the default terminal
        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", {
            desc = "Toggle Terminal"
        })
        -- Open specific terminals
        vim.keymap.set("n", "<leader>t1", "<cmd>1ToggleTerm<CR>", {
            desc = "Terminal 1"
        })
        vim.keymap.set("n", "<leader>t2", "<cmd>2ToggleTerm<CR>", {
            desc = "Terminal 2"
        })
        vim.keymap.set("n", "<leader>t3", "<cmd>3ToggleTerm<CR>", {
            desc = "Terminal 3"
        })
        -- Select an existing terminal
        vim.keymap.set("n", "<leader>ts", "<cmd>TermSelect<CR>", {
            desc = "Select Terminal"
        })

        -- Kill the current terminal buffer
        local Terminal = require("toggleterm.terminal")

        -- Kill the current terminal
        vim.keymap.set("n", "<leader>tx", function()
            local term = Terminal.get(vim.b.toggle_number)

            if term then
                term:shutdown()
            end
        end, {
            desc = "Kill Terminal"
        })
    end
}
