-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<C-K>")
vim.keymap.del("n", "<C-J>")
vim.keymap.del("n", "<leader>:")
vim.keymap.set("n", "<leader>d", "<leader>dzz", { silent = true })
vim.keymap.set("n", "<leader>u", "<leader>uzz", { silent = true })
vim.keymap.set("n", "<leader>fx", ":!chmod +x %<CR>", { silent = true })

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>Y", [["+Y]])
