vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sm", "<C-w>w", { desc = "moves between split scripts" })
vim.keymap.set("n", "<leader>s<Up>", "<C-w>k", { desc = "move to the split above" })
vim.keymap.set("n", "<leader>s<Down>", "<C-w>j", { desc = "move to the split below" })
vim.keymap.set("n", "<leader>s<Left>", "<C-w>h", { desc = "move to the split on the left" })
vim.keymap.set("n", "<leader>s<Right>", "<C-w>l", { desc = "move to the split on the right" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "creates a new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close the current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "goes to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "goes to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current file in a new tab" })
