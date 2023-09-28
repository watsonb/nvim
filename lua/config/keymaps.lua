-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew, open netrw file Explorer" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "[p]aste over selected and keep paste content in register" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[y]ank selected to buffer clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank selected to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete selection [V] or direction [N]" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Ctrl+c == Esc" })

-- Autosave
vim.keymap.set("n", "<leader>as", "<cmd>ASToggle<CR>", { desc = "[a]uto [s]ave toggle" })

-- Cheatsheet
vim.keymap.set("n", "<leader>?", "<cmd>Cheatsheet<CR>", { desc = "open Cheatsheet" })

-- Git
-- vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "open Git" })

-- Undotree
-- vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- ToggleTerm
vim.keymap.set("n", "<leader>tf", "<CMD>ToggleTerm direction=float<cr>", { desc = "[t]oggleterm [f]loat" })
vim.keymap.set(
  "n",
  "<leader>th",
  "<CMD>ToggleTerm size=10 direction=horizontal<cr>",
  { desc = "[t]oggleterm [h]orizontal" }
)
vim.keymap.set(
  "n",
  "<leader>tv",
  "<CMD>ToggleTerm size=80 direction=vertical<cr>",
  { desc = "[t]oggleterm [v]ertical" }
)
vim.keymap.set("n", "<leader>tt", "<CMD>ToggleTerm direction=tab<cr>", { desc = "[t]oggleterm [t]ab" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { buffer = 0, desc = "escape text entry mode in terminal" })
vim.keymap.set(
  "t",
  "<C-w>",
  [[<C-\><C-n><C-w>]],
  { buffer = 0, desc = "escape text entry in terminal and ready to move to window" }
)


-- Trouble
-- Lua
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { desc = "Toggle Trouble" },
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { desc = "Toggle Trouble (workspace)" },
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { desc = "Toggle Trouble (document)" },
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { desc = "Toggle Trouble location list" },
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { desc = "Toggle Trouble quickfix" },
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { desc = "Toggle Trouble LSP References" },
  {silent = true, noremap = true}
)
