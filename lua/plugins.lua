-- Usar packer.nvim para gestionar plugins
return require('packer').startup(function(use)
  -- Packer puede gestionarse a sí mismo
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig' -- Configuraciones para LSP
  use 'nvim-telescope/telescope.nvim' -- Interfaz de búsqueda y navegación
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvimdev/lspsaga.nvim',
    branch = 'main',
    config = function()
      require('lspsaga').setup({})
    end,
    requires = {
      {"nvim-tree/nvim-web-devicons"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }

  -- Lista de plugins
  use 'tpope/vim-sensible'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
  use 'junegunn/fzf.vim'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'tpope/vim-commentary'
  use 'gruvbox-community/gruvbox'
  use 'sainnhe/everforest'
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use 'github/copilot.vim'
  use 'kdheepak/lazygit.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- Opcional, pero recomendado
    },
    config = function()
      require'nvim-tree'.setup {}
    end
  }
  use 'folke/tokyonight.nvim'
  use 'akinsho/bufferline.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'nvim-lua/plenary.nvim'
  use {
    'folke/lazy.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
      'nvim-lualine/lualine.nvim',
      'folke/which-key.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-tree.lua',
      'akinsho/bufferline.nvim',
      'goolord/alpha-nvim',
      'lukas-reineke/indent-blankline.nvim',
      'lewis6991/gitsigns.nvim',
      'rcarriga/nvim-notify',
      'folke/tokyonight.nvim',
    },
    config = function()
      vim.cmd([[colorscheme tokyonight]])
      require('lualine').setup({ options = { theme = 'tokyonight' } })
      require('nvim-tree').setup()
      require('bufferline').setup()
      require('gitsigns').setup()
    end,
  }
  use { 'zbirenbaum/copilot.lua', config = function()
    require('copilot').setup({
      suggestion = { enabled = true },
      panel = { enabled = true },
    })
  end }
  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim' },
    },
    config = function()
      require("CopilotChat").setup {
        debug = true,
        show_help = true,
        window = {
          layout = 'float',
          width = math.floor(vim.o.columns * 0.3),
          height = vim.o.lines - 2,
          relative = 'editor',
          col = vim.o.columns - math.floor(vim.o.columns * 0.3),
          row = 1,
          border = 'single',
          title = 'Copilot Chat',
        },
        mappings = {
          close = { normal = '<C-q>', insert = '<C-q>' },
          reset = { normal = '<C-r>', insert = '<C-r>' },
          submit_prompt = { normal = '<C-m>', insert = '<C-m>' },
          accept_diff = { normal = '<C-y>', insert = '<C-y>' },
          yank_diff = { normal = 'gy' },
          show_diff = { normal = 'gd' },
          show_system_prompt = { normal = 'gp' },
          show_user_selection = { normal = 'gs' },
        },
      }
    end,
  }
end)

