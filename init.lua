-- ================================
-- Inicialización de packer.nvim
-- ================================
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  vim.cmd [[packadd packer.nvim]]
end

-- Autocomando para recargar Neovim cuando se modifica el archivo init.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

-- ================================
-- Configuración del Portapapeles en WSL
-- ================================
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "/mnt/c/Windows/System32/clip.exe",
      ["*"] = "/mnt/c/Windows/System32/clip.exe",
    },
    paste = {
      ["+"] = '/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -c [Console]::Out.Write(%(Get-Clipboard -Raw).ToString().Replace("`r", ""))',
      ["*"] = '/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -c [Console]::Out.Write(%(Get-Clipboard -Raw).ToString().Replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end

-- ================================
-- Inicialización de Plugins con packer.nvim
-- ================================
require('packer').startup(function(use)
  -- ====================================
  -- Plugins de Gestión de Paquetes
  -- ====================================

  -- Packer puede gestionarse a sí mismo
  use 'wbthomason/packer.nvim'

  -- ====================================
  -- Plugins de Lenguaje y LSP
  -- ====================================

  -- Configuración de LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')

      local on_attach = function(_, bufnr)
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_buf_set_keymap

        -- Definición de atajos específicos para LSP
        keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
        keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
        keymap(bufnr, 'n', '<leader>vws', '<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)
        keymap(bufnr, 'n', '<leader>vd', '<Cmd>lua vim.diagnostic.open_float()<CR>', opts)
        keymap(bufnr, 'n', '[d', '<Cmd>lua vim.diagnostic.goto_next()<CR>', opts)
        keymap(bufnr, 'n', ']d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
        keymap(bufnr, 'n', '<leader>vca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        keymap(bufnr, 'n', '<leader>vrr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
        keymap(bufnr, 'n', '<leader>vrn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
        keymap(bufnr, 'i', '<C-h>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      end

      -- Lista de servidores LSP a configurar
      local servers = { 'ts_ls', 'pyright', 'gopls' }
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = on_attach,
        }
      end
    end
  }

  -- Lspsaga para mejorar la experiencia con LSP
  use {
    'nvimdev/lspsaga.nvim',
    branch = 'main',
    requires = {
      {"nvim-tree/nvim-web-devicons"},
      {"nvim-treesitter/nvim-treesitter"}
    },
    config = function()
      require('lspsaga').setup({
        code_action_lightbulb = {
          enable = false, -- Desactivar las bombillas
        }
      })
      
      -- Atajos específicos de lspsaga
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
      vim.api.nvim_set_keymap('n', 'gd', '<Cmd>Lspsaga peek_definition<CR>', opts)
      vim.api.nvim_set_keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
      vim.api.nvim_set_keymap('n', '<space>d', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
    end
  }

  -- ====================================
  -- Plugins de Búsqueda y Navegación
  -- ====================================

  -- Telescope para una interfaz de búsqueda poderosa
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{}
      
      -- Atajos específicos de Telescope
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)
      vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope live_grep<CR>', opts)
    end
  }

  -- Treesitter para una mejor sintaxis y plegado de código
  use 'nvim-telescope/telescope.nvim' -- Interfaz de búsqueda y navegación
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "c", "lua", "python", "go", "javascript" }, -- Lista de lenguajes a instalar
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        fold = {
          enable = true,
          disable = {},
        },
      }

      -- Configuración de plegado basada en Treesitter
      vim.o.foldmethod = 'expr'
      vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
      vim.o.foldlevel = 99
      vim.opt.foldenable = true
      vim.opt.foldcolumn = '1'

      -- Guarda y restaura el estado de los pliegues
      vim.cmd [[
        autocmd BufWinLeave * silent! mkview
        autocmd BufWinEnter * silent! loadview
      ]]
    end
  }

  -- ====================================
  -- Plugins de Interfaz de Usuario
  -- ====================================

  -- Lualine para una barra de estado elegante
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup {
        options = { theme = 'tokyonight' }
      }
    end
  }

  -- Nvim Tree para la navegación de archivos
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {
        view = {
          side = 'right', -- Configurar para que la ventana se abra en el lado derecho
        }
      }
  
      -- Atajos específicos de nvim-tree
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap('n', '<C-d>', ':NvimTreeToggle<CR>', opts)
      vim.api.nvim_set_keymap('n', '<C-r>', ':NvimTreeRefresh<CR>', opts)
    end
  }

  -- Bufferline para gestionar pestañas
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('bufferline').setup{}
    end
  }
  -- ====================================
  -- GIT
  -- ====================================

  -- Lazygit para integración con Git
  use {
    'kdheepak/lazygit.nvim',
    config = function()
      -- Configuración adicional para lazygit
      vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
  
      -- Opciones de configuración para lazygit
      vim.g.lazygit_floating_window_winblend = 0 -- Transparencia de la ventana flotante
      vim.g.lazygit_floating_window_scaling_factor = 0.9 -- Escala de la ventana flotante
      vim.g.lazygit_floating_window_use_plenary = 0 -- Usar plenary.nvim para la ventana flotante
      vim.g.lazygit_use_neovim_remote = 1 -- Usar neovim-remote para abrir archivos
  
      -- Autocomando para abrir lazygit en el directorio del proyecto
      vim.cmd([[
        autocmd FileType lazygit setlocal nonumber norelativenumber
      ]])
    end
  }
  
-- Gitsigns para mostrar información de Git en el margen

use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    -- Definir los resaltados
    vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = 'GitGutterAdd' })
    vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'GitGutterChange' })
    vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = 'GitGutterDelete' })
    vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'GitSignsAddNr' })
    vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'GitSignsChangeNr' })
    vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'GitSignsDeleteNr' })
    vim.api.nvim_set_hl(0, 'GitSignsAddLn', { link = 'GitSignsAddLn' })
    vim.api.nvim_set_hl(0, 'GitSignsChangeLn', { link = 'GitSignsChangeLn' })
    vim.api.nvim_set_hl(0, 'GitSignsDeleteLn', { link = 'GitSignsDeleteLn' })

    require('gitsigns').setup {
      signs = {
        add          = { text = '+' },
        change       = { text = '~' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
      },
      current_line_blame = true, -- Habilitar blame en la línea actual
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- Mostrar el blame al final de la línea
        delay = 1000, -- Retraso en milisegundos antes de mostrar el blame
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
    }
  end
}

 -- ====================================
  -- GIT
  -- ====================================


  -- Tema tokyonight
  use {
    'AxelGard/oneokai.nvim',
    config = function()
      vim.o.background = 'dark'
      vim.g.oneokai_style = 'neon' -- Opciones: 'dark', 'light', 'dawn', 'dusk', 'night', 'neon'
      vim.cmd([[colorscheme oneokai]])
    end,
  }
  

  -- ====================================
  -- Plugins de Edición y Productividad
  -- ====================================

  -- Vim Sensible para configuraciones básicas
  use 'tpope/vim-sensible'

  -- Vim Commentary para comentar líneas fácilmente
  use 'tpope/vim-commentary'

  -- FZF para una búsqueda rápida
  use {
    'junegunn/fzf',
    run = function() vim.fn['fzf#install']() end
  }

  -- FZF Vim para integrar FZF con Vim
  use 'junegunn/fzf.vim'

  -- Temas adicionales
  use 'gruvbox-community/gruvbox'
  use 'sainnhe/everforest'





-- Vim Go para desarrollo en Go
-- Instalar y configurar nvim-toggleterm.lua
use {
  'akinsho/nvim-toggleterm.lua',
  config = function()
    require("toggleterm").setup{
      direction = 'float',
      float_opts = {
        border = 'curved',
        width = 100,
        height = 30,
      }
    }
  end
}

-- Configurar vim-go para usar la terminal flotante
use {
  'fatih/vim-go',
  run = ':GoUpdateBinaries',
  config = function()
    -- Habilitar resaltado de errores
    vim.g.go_highlight_trailing_whitespace_error = 1
    vim.g.go_highlight_extra_types = 1
    vim.g.go_highlight_operators = 1
    vim.g.go_highlight_functions = 1
    vim.g.go_highlight_function_calls = 1
    vim.g.go_highlight_types = 1
    vim.g.go_highlight_fields = 1
    vim.g.go_highlight_build_constraints = 1

    -- Configurar GoLint para resaltar errores
    vim.g.go_metalinter_enabled = {'golint', 'errcheck'}
    vim.g.go_metalinter_autosave = 1
    vim.g.go_metalinter_deadline = '5s'

    -- Configurar GoTest para resaltar errores en pruebas
    vim.g.go_test_show_name = 1
    vim.g.go_test_show_errors = 1

    -- Redefinir comandos de prueba para usar la terminal flotante
    vim.cmd([[
      function! GoTestFloat()
        execute 'ToggleTerm direction=float cmd="go test ./..."'
      endfunction

      command! GoTest call GoTestFloat()
    ]])
  end
}

    




  -- Copilot para autocompletado inteligente
  use 'github/copilot.vim'

  -- ====================================
  -- Plugins de Autocompletado
  -- ====================================

  -- nvim-cmp para autocompletado
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      local cmp = require'cmp'
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
        })
      })

      -- Configuración específica para comandos
      cmp.setup.cmdline('/', {
        sources = {
          { name = 'buffer' }
        }
      })

      cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })
    end
  }

  -- LuaSnip para fragmentos de código
  use {
    'L3MON4D3/LuaSnip',
    requires = { 'saadparwaiz1/cmp_luasnip' },
    config = function()
      require('luasnip').setup{}
    end
  }

  -- ====================================
  -- Plugins de Utilidades
  -- ====================================
  use 'nvim-lua/plenary.nvim'

  -- ====================================
  -- Plugins de Configuración Avanzada
  -- ====================================
  use {
    'folke/lazy.nvim',
    requires = {
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
      -- Ya configurado anteriormente
      -- Puedes agregar configuraciones adicionales aquí si es necesario
    end,
  }

  -- ====================================
  -- Plugins de Copilot
  -- ====================================

  -- Copilot.lua para integración avanzada
  use {
    'zbirenbaum/copilot.lua',
    event = { "InsertEnter" },
    config = function()
      require('copilot').setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-l>",           -- Acepta la sugerencia completa (opcionalmente cambia a Tab si lo prefieres)
            accept_word = "<C-Right>",   -- Acepta solo la siguiente palabra
            next = "<M-]>",              -- Navegar a la siguiente sugerencia
            prev = "<M-[>",              -- Navegar a la sugerencia anterior
            dismiss = "<C-]>",
          },
        },
        panel = { enabled = true },  -- Panel opcional para ver sugerencias
      })
    end
  }
  

  -- CopilotChat.nvim para chat interactivo
  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    requires = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim' },
    },
    config = function()
      require("CopilotChat").setup {
        debug = true,
        show_help = true,
        window = {
          layout = 'float', -- Panel vertical
          width = math.floor(vim.o.columns * 0.3), -- Ancho del panel como el 30% del ancho de la pantalla
          height = vim.o.lines - 5, -- Altura del panel, dejando margen para la barra de nvim
          relative = 'cursor', -- Ventana relativa al editor principal
          col = vim.o.columns, -- Columna en el extremo derecho de la pantalla
          row = 1, -- Posicionar desde la fila superior
          border = 'rounded', -- Borde del panel
          title = 'Copilot Chat', -- Título del panel
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
  
      -- Atajos específicos de Copilot Chat
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap('n', '<C-c>', ':CopilotChatOpen<CR>', opts)
      vim.api.nvim_set_keymap('n', '<C-x>', ':CopilotChatClose<CR>', opts)
    end,
  }

end)

-- ================================
-- Configuraciones Generales de Neovim
-- ================================
vim.o.number = true
vim.o.relativenumber = false 
vim.o.hlsearch = true
vim.o.hidden = true
vim.o.errorbells = true 
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.signcolumn = 'yes'
vim.o.updatetime = 50
vim.o.colorcolumn = '80'

-- ================================
-- Mapeos Generales
-- ================================
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })

-- ====================================
-- Configuración Adicional de Plegado de Código
-- ====================================
-- Ya configurado dentro del bloque de nvim-treesitter

-- ================================
-- Finalización y Limpieza
-- ================================
-- Puedes agregar configuraciones adicionales aquí si es necesario
