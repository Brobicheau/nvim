-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Don't like these
vim.keymap.del("n", "<C-K>")
vim.keymap.del("n", "<C-J>")
vim.keymap.del("n", "<leader>:")

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>fx", ":!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<C-f>", "!tmux neww tmux-sessionizer<CR>", { silent = true })

vim.keymap.set("n", "<leader>fx", ":!chmod +x %<CR>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
