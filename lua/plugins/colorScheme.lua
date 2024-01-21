return {
  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({})
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
