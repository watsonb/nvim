return  {
  "preservim/nerdtree",
  cmd = "NERDTree",
  keys = {
    { "<leader>ntt", "<cmd>Nerdtree toggle<cr>", desc = "[N]erd[t]ree [t]oggle" },
  },
  -- branch = "v2.x",
  -- dependencies = {
  --   "nvim-lua/plenary.nvim",
  --   -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --   "MunifTanjim/nui.nvim",
  -- },
  -- config = function()
    --   -- Unless you are still migrating, remove the deprecated commands from v1.x
    --   vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
}
