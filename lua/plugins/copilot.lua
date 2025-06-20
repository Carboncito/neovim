return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    lazy = true,
    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = true,
                auto_trigger = true,
                kaymap = {
                    accept = "<Tab>",
                }
            },
            panel = {
                enabled = false,
                -- auto_refresh = false,
            },
        })
    end
}