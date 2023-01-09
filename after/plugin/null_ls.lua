local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.diagnostics.ansiblelint,
  null_ls.builtins.diagnostics.yamllint
}

null_ls.setup({ sources = sources })

