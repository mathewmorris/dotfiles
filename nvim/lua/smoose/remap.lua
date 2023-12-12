local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Open lsp error message that's too long
keymap("n", "L", ":lua vim.diagnostic.open_float()<CR>", default_opts)

-- Nice find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Center search results
keymap("n", "n", "nzzzv", default_opts)
keymap("n", "N", "Nzzzv", default_opts)

-- Center page up/down
keymap("n", "<C-d>", "<C-d>zz", default_opts)
keymap("n", "<C-u>", "<C-u>zz", default_opts)

-- Yank into system clipboard
keymap("n", "<leader>y", "\"+y", default_opts)
keymap("v", "<leader>y", "\"+y", default_opts)
keymap("n", "<leader>Y", "\"+Y", default_opts)

-- Delete to void
keymap("n", "<leader>d", "\"_d", default_opts)
keymap("v", "<leader>d", "\"_d", default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- put line below on this line while leaving cursor alone
keymap("n", "J", "mzJ`z", default_opts)

-- Never go here?
keymap("n", "Q", "<nop>", default_opts)

-- tmux brilliance
keymap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", default_opts)

vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end, expr_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

