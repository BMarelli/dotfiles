return {
  {
    'stevearc/oil.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },

    keys = {
      { "<leader>-", "<cmd>Oil<CR>", desc = "Open file explorer" },
    },

    opts = {
      default_file_explorer = true,

      skip_confirm_for_simple_edits = true,

      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == ".." or name == ".git"
        end,
      },
    }
  }
}
