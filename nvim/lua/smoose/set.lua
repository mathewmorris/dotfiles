-- Reference: https://neovim.io/doc/user/options.html

-- Setting the global and local leader keys to the spacebar.
-- The leader key is used as a prefix for key mappings.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Automatically save the file when switching buffers or writing to a file.
vim.opt.autowrite = true

vim.opt.conceallevel = 2

-- Highlight the line where the cursor is located for better visibility.
vim.opt.cursorline = true

-- Automatically read a file when it is modified outside of Neovim.
vim.opt.autoread = true

-- Use spaces instead of tabs and configure indentation:
-- tabstop: Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 2
-- softtabstop: Number of spaces to insert when <Tab> is pressed and when backspacing over a <Tab>.
vim.opt.softtabstop = 2
-- shiftwidth: Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth = 2
-- shiftround: Round indent to a multiple of 'shiftwidth'.
vim.opt.shiftround = true
-- expandtab: Convert tabs to spaces.
vim.opt.expandtab = true

-- Configure a blinking cursor for different modes in Neovim:
-- The complex string configures the blink rate and cursor shape for various modes.
vim.opt.guicursor = "n-v-c-i-ci-ve-r-cr-o:block,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Enable line numbers:
-- nu: Show the absolute line number for the line with the cursor.
-- relativenumber: Show the relative line number for other lines.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Miscellaneous settings:
-- smartindent: Automatically insert an indent on a new line after certain keywords.
-- wrap: Disable wrapping of lines longer than the window width.
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.sidescroll = 1


-- Netrw Configuration

-- Set the default directory listing style (tree-style view)
vim.api.nvim_set_var('netrw_liststyle', 3)

-- Change the default Netrw window size and disable the banner
vim.api.nvim_set_var('netrw_banner', 0)
vim.api.nvim_set_var('netrw_winsize', 25)

-- Hide certain files and directories (hidden files in Unix-like systems)
vim.api.nvim_set_var('netrw_list_hide', '^\\.')

-- Mapping keys for quick access to Netrw
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', {noremap = true, silent = true})

