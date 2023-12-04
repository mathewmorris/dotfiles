local mkdnflow = require('mkdnflow')

mkdnflow.setup({
  perspective = {
    priority = 'root',
    root_tell = 'index.md',
  },
  links = {
    transform_explicit = function(text)
      text = text:gsub(" ", "-")
      text = text:lower()
      text = os.date('%Y-%m-%d/')..text
      return(text)
    end
  },
})
