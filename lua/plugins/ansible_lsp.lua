return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          -- make sure mason installs this for you
          keys = {
            -- `gopls` only supports `textDocument/prepareCallHierarchy` if
            -- `callHierarchy` config is enabled. Don't add keybinds to this
            -- client unless you explicitly enable this config.
            -- This is only an example
            -- { "<leader>gC", "<cmd>lua vim.lsp.buf.prepare_call_hierarchy()<cr>", desc = "Call Hierarchy" },
          },
          settings = {
            yaml = {
              schemas = {
                ["https://raw.githubusercontent.com/ansible/ansible-lint/main/schemas/ansible.json"] = "ansible/*.y*ml",
                ["https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible/ansible-playbook.json"] = "*playbook*.yml",
                ["https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible/ansible.json"] = "ansible.y*ml",
                -- You can add more specific schemas here if needed.
              },
              customTags = {
                "!ENV scalar",
                "!include_dir_named mapping",
                "!include_dir_merge_named mapping",
                "!include_dir_list sequence",
                "!include_dir_merge_list sequence",
                "!vault",
                "!encrypted",
                "!secret",
                "!unsafe",
              },
            },
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("ansible.cfg", "requirements.yml", ".git")(fname)
          end,
        },
      },
    },
  },
}
