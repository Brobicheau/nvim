return {
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({

        extend_background_behind_borders = true,
        styles = { transparency = false },
      })
    end,
  },
}
