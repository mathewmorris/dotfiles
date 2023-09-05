local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Package Manager

	use 'terrortylor/nvim-comment' -- Code Commentor
	require('nvim_comment').setup()

	-- LSP Config
	use 'neovim/nvim-lspconfig'

	-- TypeScript LSP
	use 'jose-elias-alvarez/typescript.nvim'

	-- Harpoon
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'

	use 'nvim-treesitter/nvim-treesitter' -- TreeSitter
end)
