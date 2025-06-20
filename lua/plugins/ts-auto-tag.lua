return {
  require("plugins.copilot"),
  require("plugins.cmp"),
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "typescript", "tsx", "vue", "svelte", "astro" },
    config = function()
      require("nvim-ts-autotag").setup({})
    end
  }
}