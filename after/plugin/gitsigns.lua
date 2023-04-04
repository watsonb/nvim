-- Gitsigns
-- See `:help gitsigns.txt`
local gs = require('gitsigns')
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

vim.keymap.set("n", "<leader>gl", function() gs.blame_line() end, { desc = "[g]it blame [l]ine" })
vim.keymap.set("n", "<leader>gd", function() gs.diffthis() end, { desc = "[g]it [d]iff" })
