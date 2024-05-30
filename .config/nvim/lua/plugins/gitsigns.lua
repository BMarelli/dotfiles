return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    vim.keymap.set("n", "<leader>ghp", ":Gitsigns preview_hunk<CR>", { desc = "preview hunk" })
  end
}
