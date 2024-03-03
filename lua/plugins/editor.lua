return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },

      -- see below for full list of options 👇
    },
  },
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
