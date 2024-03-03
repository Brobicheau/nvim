return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp_window = require("cmp.config.window")
      return vim.tbl_deep_extend("force", opts, {
        window = {
          completion = cmp_window.bordered(),
          documentation = cmp_window.bordered(),
        },
      })
    end,
  },
  {
    "folke/noice.nvim",
    opts = { presets = { lsp_doc_border = true } },
  },
  {
    "echasnovski/mini.files",
    opts = {

      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 30,
      },

      options = { use_as_default_explorer = true },
    },
  },
}
