vim.opt.cursorline = true
-- tabs and indentation
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.cmd('let g:netrw_liststyle = 3')
-- life caring shortcuts
vim.opt.clipboard:append("unnamedplus") -- use system clipboard
vim.cmd("inoremap [ []<Left>")
vim.cmd("inoremap ( ()<Left>")
vim.cmd("inoremap < <><Left>")
vim.cmd("inoremap ' ''<Left>")
vim.cmd("inoremap { {}<Left>")
vim.cmd("nmap <S-Up> v<Up>")
vim.cmd("nmap <S-Down> v<Down>")
vim.cmd("nmap <S-Left> v<Left>")
vim.cmd("nmap <S-Right> v<Right>")
vim.cmd("vmap <S-Up> <Up>")
vim.cmd("vmap <S-Down> <Down>")
vim.cmd("vmap <S-Left> <Left>")
vim.cmd("vmap <S-Right> <Right>")
