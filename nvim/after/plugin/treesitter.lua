local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print("Treesitter is not installed")
  return
end

ts.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "dart", "javascript", "typescript", "tsx" },
  highlight = {
    enabled = true
    }
  }
