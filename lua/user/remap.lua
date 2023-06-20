--
-- General Purpose Neovim remaps
--

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew, open netrw file Explorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move selection up" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "jump down half page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "jump up half page" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "[p]aste over selected and keep paste content in register" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "[y]ank selected to buffer clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank selected to system clipboard" })

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "delete selection [V] or direction [N]" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Ctrl+c == Esc" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Q does nothing" })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "new tmux session" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[f]ormat buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace word you're on" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "make file e[x]ecutable" })

--
-- Plugin-specific maps
--

-- NERDTree / Neotree
vim.keymap.set("n", "<leader>ntt", "<cmd>NERDTreeToggle<CR>", { desc = "[n]erd [t]ree [t]oggle" })
vim.keymap.set("n", "<leader>Ntt", "<cmd>Neotree toggle<CR>", { desc = "[N]eo[t]ree [t]oggle" })

-- Autosave
vim.keymap.set("n", "<leader>as", "<cmd>ASToggle<CR>", { desc = "[a]uto [s]ave toggle" })

-- Cheatsheet
vim.keymap.set("n", "<leader>?", "<cmd>Cheatsheet<CR>", { desc = "open Cheatsheet" })

-- Completion
-- gray
vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg='NONE', strikethrough=true, fg='#808080' })
-- blue
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg='NONE', fg='#569CD6' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link='CmpIntemAbbrMatch' })
-- light blue
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg='NONE', fg='#9CDCFE' })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link='CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { link='CmpItemKindVariable' })
-- pink
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg='NONE', fg='#C586C0' })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link='CmpItemKindFunction' })
-- front
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg='NONE', fg='#D4D4D4' })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link='CmpItemKindKeyword' })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link='CmpItemKindKeyword' })

-- Git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "open Git" })

-- Undotree
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
