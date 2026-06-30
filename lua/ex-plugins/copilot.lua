return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    lazy = true,
    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = false,
                auto_trigger = false,
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