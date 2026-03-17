require("copilot").setup({
  filetypes = {
    ansible = true,
    yaml = true,
    yml = true,
    ["yaml.ansible"] = true, -- hail mary?
  },
})
