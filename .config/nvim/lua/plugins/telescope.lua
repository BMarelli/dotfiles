return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "find recent files" })
      vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "find string in file" })
    end,

  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        },

        defaults = {
          layout_config = {
            prompt_position = "top",

            horizontal = { preview_width = 0.65 },
            width = { padding = 0 },
            height = { padding = 0 },
            preview_width = 0.65,
          },

          sorting_strategy = "ascending",
        },

        pickers = {
          git_files = {
            show_untracked = true,
          },
        },
      }
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("fzf")
    end
  }
}
