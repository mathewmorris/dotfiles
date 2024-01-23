require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'neon',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}

