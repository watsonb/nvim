-- Lua initialization file
vim.g.moonflyCursorColor = false

vim.cmd("colorscheme onedark_dark")

require("onedarkpro").setup({
  options = {
    transparency = true,
    cursorline = true
  },
  filetypes = {
    javascript = true,
    lua = true,
    markdown = true,
    php = true,
    python = true,
    ruby = true,
    rust = true,
    toml = true,
    typescript = true,
    typescriptreact = true,
    vue = true,
    yaml = false
  }
})
