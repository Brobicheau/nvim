return {
  {
    "nvim-telescope/telescope.nvim",

    keys = {

      {
        "<leader>fd",
        function()
          require("telescope.builtin").git_files({ cwd = "~/.dotfiles", show_untracked = true, hidden = true })
        end,
        desc = "Find Dotfiles",
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>m", mark.add_file)
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
    end,
  },
}
