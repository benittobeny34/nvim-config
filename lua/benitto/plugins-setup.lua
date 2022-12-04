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

--AutoCommand that reloads neovim hwenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'bluz71/vim-nightfly-guicolors' --Preparred colorscheme

  use 'christoomey/vim-tmux-navigator'
  
  use 'szw/vim-maximizer'

  use "tpope/vim-surround"
  
  use 'vim-scripts/ReplaceWithRegister'

  use 'numToStr/Comment.nvim'

  use 'nvim-tree/nvim-tree.lua'

  use 'kyazdani42/nvim-web-devicons'

  use 'nvim-lualine/lualine.nvim'

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use {                                                        
   'nvim-telescope/telescope.nvim',                           
   requires = {                                               
     {'nvim-lua/popup.nvim'},                                 
     {'nvim-telescope/telescope-symbols.nvim'},               
   },                                                         
 }

  --auto completions plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'


  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  
 
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

