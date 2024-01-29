return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      templ = {
        settings = {
          filetypes = { "html", "templ" },
        },
      },
    },
    setup = {
      templ = function()
        vim.filetype.add({ extension = {
          templ = "templ",
        } })
      end,
    },
  },
}
