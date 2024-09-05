return {

  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  build = ":MasonUpdate",
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      "ansible-language-server",
      "bash-language-server",
      "debugpy",
      "dockerfile-language-server",
      "html-lsp",
      "jinja-lsp",
      "json-lsp",
      "lua-language-server",
      "markdown-toc",
      "markdownlint",
      "markdownlint-cli2",
      "marksman",
      "pyflakes",
      "pylint",
      "pyright",
      "ruff",
      "ruff-lsp",
      "shfmt",
      "stylua",
      "terraform-ls",
      "typescript-language-server",
      "yamllint",
    },
  },
  ---@param opts MasonSettings | {ensure_installed: string[]}
  config = function(_, opts)
    require("mason").setup(opts)
    local mr = require("mason-registry")
    mr:on("package:install:success", function()
      vim.defer_fn(function()
        -- trigger FileType event to possibly load this newly installed LSP server
        require("lazy.core.handler.event").trigger({
          event = "FileType",
          buf = vim.api.nvim_get_current_buf(),
        })
      end, 100)
    end)

    mr.refresh(function()
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end)
  end,
}
