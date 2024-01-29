return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        local function find_dotfiles()
          require("telescope.builtin").git_files({ cwd = "~/.dotfiles", show_untracked = true, hidden = true })
        end

        vim.keymap.set("n", "<leader>fd", find_dotfiles, { desc = "Fine Dotfiles" })
      end,
    },
  },
  {
    "theprimeagen/harpoon",
    config = function()
      require("harpoon").setup({ menu = { width = vim.api.nvim_win_get_width(0) - 20 } })
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>m", mark.add_file)
      vim.keymap.set("n", "<leader><BS>", ui.toggle_quick_menu, { desc = "Harpoon Quick Menu" })
      vim.keymap.set(
        "n",
        "<C-n>",
        "<cmd>lua require('harpoon.ui').nav_next()<CR>",
        { remap = true, desc = "Harpoon Quick Menu" }
      )
      vim.keymap.set("n", "<C-p>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Harpoon Quick Menu" })
    end,
  },
}
