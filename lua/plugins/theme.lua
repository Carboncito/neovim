-- -- local c = require('vscode.colors').get_colors()

-- return {
--     "Mofiqul/vscode.nvim", -- Esto hará que el tema se cargue apenas Neovim inicie.
--     -- Opcional: Puedes configurarlo para cargarse solo cuando cambies de tema si tienes muchos.
--     lazy = false,
--     priority = 1000, -- Asegura que este tema se cargue antes que otros
--     -- opts = {
--     config = function()
--         local c = require("vscode.colors").get_colors()
--         require("vscode").setup({
--           transparent = true,
--           italic_comments = true,
--           underline_links = true,
--           disable_nvimtree_bg = true,
--           terminal_colors = true,
--           color_overrides = {
--             vscLineNumber = '#FFFFFF'
--           },
--           group_overrides = {
--             Cursor = {
--               fg = c.vscDarkBlue,
--               bg = c.vscLightGreen,
--               bold = true,
--             }
--           }
--         })
--         -- -- Alternatively set style in setup
--         -- -- style = 'light'

--         -- -- Enable transparent background
--         -- transparent = true,

--         -- -- Enable italic comment
--         -- italic_comments = true,

--         -- -- Underline `@markup.link.*` variants
--         -- underline_links = true,

--         -- -- Disable nvim-tree background color
--         -- disable_nvimtree_bg = true,

--         -- -- Apply theme colors to terminal
--         -- -- terminal_colors = true,

--         -- -- Override colors (see ./lua/vscode/colors.lua)
--         -- color_overrides = {
--         --     vscLineNumber = '#FFFFFF'
--         -- },

--         -- -- Override highlight groups (see ./lua/vscode/theme.lua)
--         -- group_overrides = {
--         --     -- this supports the same val table as vim.api.nvim_set_hl
--         --     -- use colors from this colorscheme by requiring vscode.colors!
--         --     Cursor = {
--         --         fg = c.vscDarkBlue,
--         --         bg = c.vscLightGreen,
--         --         bold = true
--         --     }
--         -- }
--     end
-- }

-- tokyonight.nvim
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}