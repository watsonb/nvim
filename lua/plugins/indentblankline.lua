vim.opt.termguicolors = true

-- brighter colors
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- more muted
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#662121 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#767621 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#216631 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#325A5E gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#324B7B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#562155 gui=nocombine]]


vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("indent_blankline").setup({
      space_char_blankline = " ",
      char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
      },
    })
  end
}
