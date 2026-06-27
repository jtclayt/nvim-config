-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<leader>w", "<C-w>q", { desc = "Close window" })

-- Buffer navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffers" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffers" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Diagnostics
vim.keymap.set("n", "<leader>dh", vim.diagnostic.open_float, { desc = "Hover"})

-- Explorer
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Explorer" })
