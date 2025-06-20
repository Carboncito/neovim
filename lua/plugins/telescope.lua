local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({
    find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix', '--exclude', 'node_modules', '--exclude', '.git', '--exclude', 'dist', '--exclude', 'build', '--exclude', 'vendor' },
  })
end, { desc = 'Find files' })

vim.keymap.set('n', '<leader>fg', function()
  builtin.live_grep({
    additional_args = function()
      return { "--glob=!node_modules/*", "--glob=!*.git/*", "--glob=!dist/*", "--glob=!build/*", "--glob=!vendor/*" }
    end
  })
end, { desc = 'Live grep' })

vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  -- branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      file_ignore_patterns = { 'node_modules', '%.git/', 'dist/', 'build/', "vendor" },
    },
  }
}