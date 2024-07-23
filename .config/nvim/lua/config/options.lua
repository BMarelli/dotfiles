vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- undofile
vim.opt.undofile = true

-- disable text wrap
vim.opt.wrap = false

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- sign column
vim.opt.signcolumn = "yes"

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- scrolloff
vim.opt.scrolloff = 20
vim.opt.sidescrolloff = 20

-- split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- treesitter language overrides
vim.treesitter.language.register("bash", "zsh")
