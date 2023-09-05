local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print("Treesitter is not installed")
  return
end

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "typescript" },
  }
