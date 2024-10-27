-- (x) Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Don't like these
vim.keymap.del("n", "<C-K>")
vim.keymap.del("n", "<C-J>")
vim.keymap.del("n", "<leader>:")

-- vim.keymap.set("n", "q", "<nop>")
-- vim.keymap.set("n", "Q", "<nop>")

local function delete_node_under_cursor()
  local ts_utils = require("nvim-treesitter.ts_utils")
  local node = ts_utils.get_node_at_cursor()
  ts_utils.goto_node(node)
  vim.cmd("normal! v")
  ts_utils.goto_node(node, true)
  vim.cmd("normal! d")
end

vim.keymap.set({ "i" }, "jk", "<ESC>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<BS><BS>", delete_node_under_cursor)

vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")

vim.keymap.set("n", "<C-,>", "<c-w>5<")
vim.keymap.set("n", "<C-.>", "<c-w>5>")
vim.keymap.set("n", "<C-#>", "<C-W>+")
vim.keymap.set("n", "<C-*>", "<C-W>-")

vim.keymap.set("n", "<leader>-", "<C-W>v")
vim.keymap.set("n", "<leader>_", "<C-W>s")
vim.keymap.set("n", "<leader>.", "<leader>fr")

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "}", "<C-d>zz", { silent = true })
vim.keymap.set("n", "{", "<C-u>zz", { silent = true })

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

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
