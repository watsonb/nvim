return {
  "linux-cultist/venv-selector.nvim",
  opts = {
    -- TODO: convince plugin maintainer to modify regex for a "starts-with"
    name = {
      "venv3_ansible-4.3.0",
      "venv3_ansible-7.4.0",
      "venv3_ansible_builder-3.0.0.0b1",
      "venv3_ansible_navigator-3.3.0",
      "venv3_ansible_rulebook-1.0.2",
      "venv3_eda_snow",
      "venv3_eda_scom",
      "venv_pymgit",
    },
    auto_refresh = true,
    fd_binary_name = "fdfind",
    -- name = "venvtest",
    dap_enabled = true,
    path = "~/venvs",
    parents = 0,
    enable_debug_output = false,
    search_venv_managers = false,
    search_workspace = false,
    search = true,
  },
}
