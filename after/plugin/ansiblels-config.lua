-- Configure the ansiblels language server
require("lspconfig").ansiblels.setup({
  -- Add any other configurations for ansiblels here
  -- Example: Add custom arguments to ansible-lint
  settings = {
    ansible = {
      ansibleLint = {
        arguments = {
          "-f",
          "codeclimate", -- Force CodeClimate/JSON output format
        },
      },
    },
  },
})
