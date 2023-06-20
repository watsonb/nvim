return {
  "HiPhish/nvim-ts-rainbow2",
  dependencies = {
    {'nvim-treesitter/nvim-treesitter'},
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      rainbow = {
        enable = true,
        -- disable = {},
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {}, -- table of colour name strings
        query = 'rainbow-parens',
        strategy = require("ts-rainbow").strategy.global,
      }
    })
  end
}
