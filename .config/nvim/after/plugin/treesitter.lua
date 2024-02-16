local status = pcall(require, "nvim-treesitter.configs")

if (not status) then
  print("Treesitter is not installed")
  return
end

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "lua",
    "vim",
    "typescript",
    "javascript",
    "ruby",
    "php",
    "tsx",
    "bash",
    "markdown",
    "markdown_inline",
  },

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

