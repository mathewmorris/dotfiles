-- Reference: https://neovim.io/doc/user/options.html
--

-- setting leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- clear search results
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- blinking cursor
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- miscellaneous
vim.opt.smartindent = true
vim.opt.wrap = false
