return {
  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({
        variant = "moon",

        extend_background_behind_borders = true,
      })
    end,
  },
}
