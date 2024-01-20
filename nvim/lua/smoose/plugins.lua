local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Package Manager
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim' -- statusline (that cool looking bar at the bottom)

  -- Tools
  use {
    'ThePrimeagen/harpoon', -- Getting you where you want with the fewest keystrokes.
    branch = 'harpoon2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'mbbill/undotree' -- The undo history visualizer for VIM
  use 'tpope/vim-surround' -- Delete/change/add parentheses/quotes/XML-tags/much more with ease
  use 'HiPhish/nvim-ts-rainbow2' -- Rainbow delimiters for Neovim
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Git
  use 'tpope/vim-fugitive' -- Git in neovim
  use 'airblade/vim-gitgutter'

  -- Language Server Protocol (LSP) Support
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'

  -- Notebook
  use 'jakewvincent/mkdnflow.nvim'

  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

