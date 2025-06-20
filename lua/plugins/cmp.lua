return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    -- 'zbirenbaum/copilot-cmp',
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip") -- Solo si usas Luasnip

    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
        }),
        sources = {
            -- { name = "copilot" },
            { name = "nvim_lsp" },
            { name = "luasnip" }, -- Solo si usas Luasnip
            { name = "buffer" },
            { name = "path" },
            { name = "cmdline" }
        }
    })
    cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" }
        }
    })
    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.setup.sources({
            { name = "path" },
            { name = "cmdline" }
        })
    })
    -- require("copilot_cmp").setup()
  end
}
