local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- Center page up/down
keymap("n", "<C-d>", "<C-d>zz",default_opts)
keymap("n", "<C-u>", "<C-u>zz",default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- Debugging
-- keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", default_opts)
-- keymap('n', '<F1>', ":lua require'dap'.step_over()<CR>", default_opts)
-- keymap('n', '<F2>', ":lua require'dap'.step_into()<CR>", default_opts)
-- keymap('n', '<F3>', ":lua require'dap'.step_out()<CR>", default_opts)
-- keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", default_opts)
-- keymap('n', '<leader>B', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint message: '))<CR>", default_opts)
-- keymap('n', '<leader>dr', ":lua require'dap'.repl.open()<CR>", default_opts)

