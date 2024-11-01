-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.clipboard = ""
vim.api.nvim_set_hl(0, "FlashLabel", {
  bold = false,
})
vim.opt.inccommand = "split"
vim.cmd([[ set noswapfile ]])
