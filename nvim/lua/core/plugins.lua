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
  -- Packer
  use 'wbthomason/packer.nvim' 

  -- Theme
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'

  -- Code Commentor
	use 'terrortylor/nvim-comment' 
	require('nvim_comment').setup()

	-- LSP Config
	use 'neovim/nvim-lspconfig'

	-- TypeScript LSP
	use 'jose-elias-alvarez/typescript.nvim'

	-- Harpoon
	use 'ThePrimeagen/harpoon'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Tree Sitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  use 'mbbill/undotree'

end)

