return {
  "jose-elias-alvarez/null-ls.nvim",
   dependencies = {
     {'nvim-lua/plenary.nvim'},
     {'davidmh/cspell.nvim'},
   },
  config = function()
    local null_ls = require("null-ls")
    require("null-ls").setup({
      sources = {
        -- code actions
        null_ls.builtins.code_actions.cspell,
        -- null_ls.builtins.code_actions.eslint,
        -- null_ls.builtins.code_actions.gitsigns,
        -- completion
        -- null_ls.builtins.completion.luasnip,
        null_ls.builtins.completion.spell,
        -- diagnostics
        null_ls.builtins.diagnostics.ansiblelint,
        null_ls.builtins.diagnostics.yamllint,
        null_ls.builtins.diagnostics.cspell,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.markdownlint,
        -- formatting
        -- hover
      }
    })
  end
}
