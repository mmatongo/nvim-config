local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
	use({ "wbthomason/packer.nvim", opt = true })
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'norcalli/nvim-base16.lua'
	use 'github/copilot.vim'
	use 'axvr/zepl.vim'
	use 'neoclide/coc.nvim'
	use 'metakirby5/codi.vim'
--	use 'Lucklyric/copilot.vim'
--	use 'mhinz/vim-signify'
--	use 'sheerun/vim-polyglot'
    use 'her/synicons.vim'
	use 'tpope/vim-commentary'
	use 'wellle/targets.vim'
--	use 'airblade/vim-gitgutter'
	use 'lewis6991/gitsigns.nvim'
	use 'andymass/vim-matchup'
	use 'godlygeek/tabular'
	use 'jiangmiao/auto-pairs'
	use 'dense-analysis/ale'
	use 'tpope/vim-repeat'
	use 'tpope/vim-surround'
	use 'tpope/vim-unimpaired'
	use 'tpope/vim-fugitive'
	use 'pangloss/vim-javascript'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      }
    }
	use 'ap/vim-css-color'
	-- theme
	use 'mmatongo/abyss'
 
	-- ...
	if packer_bootstrap then
		require("packer").sync()
	end
end)

