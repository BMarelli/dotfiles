return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "python", "haskell", "tsx", "html", "css", "yaml", "json" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
