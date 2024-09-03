-- Mostrar números de línea
vim.wo.number = true

-- Mostrar números de línea relativos
vim.wo.relativenumber = true
-- Configuración de nvim-tree.lua
require'nvim-tree'.setup {
  view = {
    width = 40, -- Ajusta este valor al tamaño deseado
    side = 'left', -- 'left' o 'right' según tu preferencia
    mappings = {
      custom_only = false,
      list = {}
    }
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}

require('nvim-web-devicons').setup {
  default = true;
}
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-n>"] = require('telescope.actions').move_selection_next,
        ["<C-p>"] = require('telescope.actions').move_selection_previous,
      },
    },
  },
}
-- Configuración de nvim-treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "c", "cpp", "go", "javascript", "json", "lua", "python", "typescript", "html", "css" }, -- Lenguajes que deseas instalar
  highlight = {
    enable = true, -- Habilita el resaltado de sintaxis
  },
  indent = {
    enable = true,              -- Habilita la indentación automática
  },
  fold = {
    enable = true,              -- Habilita el plegado de código
  }
}
-- Configuración para mantener los colores al plegar y desplegar
vim.cmd[[highlight Folded guifg=NONE guibg=NONE gui=NONE]]
vim.cmd[[highlight FoldColumn guifg=NONE guibg=NONE]]

