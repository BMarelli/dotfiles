return {
  {
    "neovim/nvim-lspconfig",
    optional = true,

    opts = {
      servers = {
        marksman = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,

    dependencies = {
      {
        "williamboman/mason.nvim",

        opts = function(_, opts)
          opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, { "markdownlint" })
        end,
      },
    },

    opts = {
      formatters_by_ft = {
        markdown = { "markdownlint" },
      },
    },
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    main = "render-markdown",
    opts = {},
    name = "render-markdown",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  },
}
