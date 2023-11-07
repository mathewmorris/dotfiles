vim.keymap.set("n", "<leader>gst", vim.cmd.Git)

vim.cmd('command! -nargs=* Gco execute "Git checkout" . " " . <q-args>')
vim.cmd('command! -nargs=* Gb execute "Git branch" . " " . <q-args>')

