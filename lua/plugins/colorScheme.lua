return {
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
