return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-lua/plenary.nvim" },
  },

  cmd = { "Telescope" },

  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<CR>",
      desc = "find files",
    },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "buffers" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "live grep" },
    { "<leader>sh", "<cmd>Telescope help_tags<CR>", desc = "help tags" },
  },

  opts = {
    defaults = {
      path_display = { "smart" },

      layout_config = {
        prompt_position = "top",
        horizontal = { preview_width = 0.65 },
        width = { padding = 0 },
        height = { padding = 0 },
      },

      sorting_strategy = "ascending",
    },

    pickers = {
      git_files = {
        show_untracked = true,
      },
    },
  },

  config = function(_, opts)
    require("telescope").setup(opts)

    require("telescope").load_extension("fzf")
  end,
}
