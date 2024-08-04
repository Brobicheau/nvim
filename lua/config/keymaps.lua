-- (x) Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Don't like these
vim.keymap.del("n", "<C-K>")
vim.keymap.del("n", "<C-J>")
vim.keymap.del("n", "<leader>:")

vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

-- vim.keymap.set({ "v", "i" }, "jk", "<ESC>")
-- vim.keymap.set("n", "m", "v")
-- vim.keymap.set("n", "m", "v")

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })

-- vim.keymap.set("n", "<C-f>", "!tmux neww tmux-sessionizer<CR>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "x", "v", "n" }, "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

local function search_dots()
  require("fzf-lua").files({ cwd = "~/.dotfiles" })
end

vim.keymap.set("n", "<leader>fd", search_dots)
vim.keymap.set("n", "<leader>nn", "<CMD>ObsidianToday<CR>")
vim.keymap.set("n", "<leader>nm", "<CMD>ObsidianDailies<CR>")
vim.keymap.set("n", "<leader>ns", "<CMD>ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>nb", "<CMD>ObsidianToggleCheckbox<CR>")
