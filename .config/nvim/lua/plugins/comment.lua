return {
  "terrortylor/nvim-comment",
  config = function()
    vim.keymap.set("n", "<leader>cl", ":CommentToggle<CR>", { desc = "toogle comment in current line" })
    vim.keymap.set("v", "<leader>cb", ":'<,'>CommentToggle<CR>", { desc = "toogle comment in block" })

    local comment = require("nvim_comment")
    comment.setup({})
  end,
}
