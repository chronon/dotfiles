vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
  use({ 'wbthomason/packer.nvim', opt = true })

  local config = function(name)
    return string.format("require('plugins.%s')", name)
  end

  local use_with_config = function(path, name)
    use({ path, config = config(name) })
  end

  use('tpope/vim-surround')
  use('tpope/vim-repeat')
  use('tpope/vim-sleuth')
  use('tpope/vim-eunuch')
  use({
    'tpope/vim-fugitive',
    requires = { 'tpope/vim-rhubarb', 'junegunn/gv.vim' },
  })

  -- use('EdenEast/nightfox.nvim')
  use('rebelot/kanagawa.nvim')

  use('gpanders/editorconfig.nvim')
  use('MTDL9/vim-log-highlighting')

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' }
    },
    config = config('telescope')
  }

  use_with_config('github/copilot.vim', 'copilot')
  use_with_config('numToStr/Comment.nvim', 'comment')
  use_with_config('lewis6991/gitsigns.nvim', 'gitsigns')
  use_with_config('kyazdani42/nvim-web-devicons', 'devicons')
  use_with_config('windwp/nvim-autopairs', 'autopairs')
  use_with_config('nvim-lualine/lualine.nvim', 'lualine')
  use_with_config('folke/trouble.nvim', 'trouble')
  use_with_config('folke/which-key.nvim', 'which_key')
  use_with_config('williamboman/mason.nvim', 'mason')

  use {
    'akinsho/toggleterm.nvim',
    config = config('toggleterm'),
    tag = 'v2.*',
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = config('nvim_tree'),
    opt = true,
  }

  use {
    'RRethy/vim-hexokinase',
    config = config('hexokinase'),
    run = 'make hexokinase'
  }

  use('b0o/schemastore.nvim')
  use ('williamboman/mason-lspconfig.nvim')
  use('neovim/nvim-lspconfig')

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'hrsh7th/cmp-vsnip' },
      { 'hrsh7th/vim-vsnip' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },
      { 'onsails/lspkind.nvim' },
    },
    config = config('cmp')
  }

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = config('treesitter'),
  })

  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
    setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
    ft = { 'markdown' },
    opt = true
  })

end)
