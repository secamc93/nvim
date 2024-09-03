-- Configurar atajos de teclado personalizados
vim.api.nvim_set_keymap('n', '<C-d>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>cc', ':CopilotChatOpen<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cx', ':CopilotChatStop<CR>', { noremap = true, silent = true })


vim.o.foldmethod = 'expr'        -- Usa 'expr' para el plegado
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'  -- Usa Treesitter como la expresión para plegar
vim.o.foldlevel = 99

vim.opt.foldenable = true                          -- Habilita el plegado de código
vim.opt.foldcolumn = '1'                           -- Muestra la columna de plegado

-- Guarda y restaura el estado de los pliegues
vim.cmd [[
  autocmd BufWinLeave * silent! mkview
  autocmd BufWinEnter * silent! loadview
]]
