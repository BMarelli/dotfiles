return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
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
            width = { padding = 0 },
            height = { padding = 0 },
            preview_width = 0.65,
          },
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
