local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print("Treesitter is not installed")
  return
end

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "ruby", "vim", "typescript", "javascript", "php", "tsx" },

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

