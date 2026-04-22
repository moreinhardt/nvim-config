return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    rename = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = true },
  },
  keys = {
    { '<C-n>', function() Snacks.words.jump(vim.v.count1, true) end, desc = 'Next Reference', mode = { 'n' } },
    { '<C-p>', function() Snacks.words.jump(-vim.v.count1, true) end, desc = 'Prev Reference', mode = { 'n' } },
    { '<leader>gg', function() Snacks.lazygit() end, desc = 'Lazygit' },
  },
}
