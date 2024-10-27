-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/cam/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/cam/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/cam/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/cam/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/cam/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["CopilotChat.nvim"] = {
    config = { "\27LJ\2\nπ\a\0\0\a\0)\2=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0046\6\a\0009\6\b\0069\6\t\6\24\6\0\6B\4\2\2=\4\n\0036\4\a\0009\4\b\0049\4\v\4\23\4\1\4=\4\f\0036\4\a\0009\4\b\0049\4\t\4=\4\r\3=\3\14\0025\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\3=\3 \2B\0\2\0015\0!\0006\1\a\0009\1\"\0019\1#\1'\3$\0'\4%\0'\5&\0\18\6\0\0B\1\5\0016\1\a\0009\1\"\0019\1#\1'\3$\0'\4'\0'\5(\0\18\6\0\0B\1\5\1K\0\1\0\26:CopilotChatClose<CR>\n<C-x>\25:CopilotChatOpen<CR>\n<C-c>\6n\20nvim_set_keymap\bapi\1\0\2\vsilent\2\fnoremap\2\rmappings\24show_user_selection\1\0\1\vnormal\ags\23show_system_prompt\1\0\1\vnormal\agp\14show_diff\1\0\1\vnormal\agd\14yank_diff\1\0\1\vnormal\agy\16accept_diff\1\0\2\vnormal\n<C-y>\vinsert\n<C-y>\18submit_prompt\1\0\2\vnormal\n<C-m>\vinsert\n<C-m>\nreset\1\0\2\vnormal\n<C-r>\vinsert\n<C-r>\nclose\1\0\b\16accept_diff\0\nreset\0\18submit_prompt\0\14show_diff\0\14yank_diff\0\23show_system_prompt\0\nclose\0\24show_user_selection\0\1\0\2\vnormal\n<C-q>\vinsert\n<C-q>\vwindow\bcol\vheight\nlines\nwidth\fcolumns\6o\bvim\nfloor\tmath\1\0\b\rrelative\vcursor\vborder\frounded\brow\3\1\bcol\0\ntitle\17Copilot Chat\vheight\0\nwidth\0\vlayout\nfloat\1\0\4\vwindow\0\14show_help\2\ndebug\2\rmappings\0\nsetup\16CopilotChat\frequireÁÃô≥\6≥ÊÃ˛\3\n\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/CopilotChat.nvim",
    url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.lua"] = {
    config = { "\27LJ\2\nÇ\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\npanel\1\0\1\fenabled\2\15suggestion\1\0\2\npanel\0\15suggestion\0\vkeymap\1\0\5\vaccept\n<C-l>\tprev\n<M-[>\16accept_word\14<C-Right>\tnext\n<M-]>\fdismiss\n<C-]>\1\0\4\fenabled\2\vkeymap\0\rdebounce\3K\17auto_trigger\2\nsetup\fcopilot\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/cam/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  everforest = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  fzf = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n∑\b\0\0\5\0'\0T6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\15\0005\4\16\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\17\0005\4\18\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\19\0005\4\20\0B\0\4\0016\0\21\0'\2\22\0B\0\2\0029\0\23\0005\2#\0005\3\25\0005\4\24\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\3=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\3\ndelay\3Ë\a\18virt_text_pos\beol\14virt_text\2\nsigns\1\0\4\28current_line_blame_opts\0\nsigns\0\23current_line_blame\2!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\b‚Äæ\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\5\badd\0\17changedelete\0\14topdelete\0\vdelete\0\vchange\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\1\0\1\tlink\21GitSignsDeleteLn\21GitSignsDeleteLn\1\0\1\tlink\21GitSignsChangeLn\21GitSignsChangeLn\1\0\1\tlink\18GitSignsAddLn\18GitSignsAddLn\1\0\1\tlink\21GitSignsDeleteNr\21GitSignsDeleteNr\1\0\1\tlink\21GitSignsChangeNr\21GitSignsChangeNr\1\0\1\tlink\18GitSignsAddNr\18GitSignsAddNr\1\0\1\tlink\20GitGutterDelete\19GitSignsDelete\1\0\1\tlink\20GitGutterChange\19GitSignsChange\1\0\1\tlink\17GitGutterAdd\16GitSignsAdd\16nvim_set_hl\bapi\bvim\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazy.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lazy.nvim",
    url = "https://github.com/folke/lazy.nvim"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\n¢\3\0\0\6\0\14\1\0296\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0)\1\0\0=\1\b\0006\0\0\0009\0\a\0*\1\0\0=\1\t\0006\0\0\0009\0\a\0)\1\0\0=\1\n\0006\0\0\0009\0\a\0)\1\1\0=\1\v\0006\0\0\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0O        autocmd FileType lazygit setlocal nonumber norelativenumber\n      \bcmd\30lazygit_use_neovim_remote(lazygit_floating_window_use_plenary+lazygit_floating_window_scaling_factor%lazygit_floating_window_winblend\6g\1\0\2\vsilent\2\fnoremap\2\17:LazyGit<CR>\15<leader>gg\6n\20nvim_set_keymap\bapi\bvimõ≥ÊÃ\25Ãô≥ˇ\3\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nº\3\0\0\a\0\19\0*6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0015\0\6\0006\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\17\0'\5\18\0\18\6\0\0B\1\5\1K\0\1\0+<Cmd>Lspsaga show_line_diagnostics<CR>\r<space>d\28<Cmd>Lspsaga rename<CR>\agr%<Cmd>Lspsaga peek_definition<CR>\agd <Cmd>Lspsaga lsp_finder<CR>\agh\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\26code_action_lightbulb\1\0\1\26code_action_lightbulb\0\1\0\1\venable\1\nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireü\5\1\0\n\0#\0L6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\b\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0069\a\b\0009\a\15\aB\a\1\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\a5\t\20\0B\a\2\2=\a\21\6B\4\2\2=\4\b\0039\4\22\0009\4\23\0044\6\3\0005\a\24\0>\a\1\0065\a\25\0>\a\2\0064\a\3\0005\b\26\0>\b\1\aB\4\3\2=\4\23\3B\1\2\0019\1\2\0009\1\27\1'\3\28\0005\4\30\0004\5\3\0005\6\29\0>\6\1\5=\5\23\4B\1\3\0019\1\2\0009\1\27\1'\3\31\0005\4\"\0009\5\22\0009\5\23\0054\a\3\0005\b \0>\b\1\a4\b\3\0005\t!\0>\t\1\bB\5\3\2=\5\23\4B\1\3\1K\0\1\0\1\0\1\fsources\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\1\fsources\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\5\n<C-e>\0\n<C-f>\0\14<C-Space>\0\n<C-d>\0\t<CR>\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\3\fmapping\0\fsnippet\0\fsources\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n∏\6\0\2\v\0\26\0K5\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\4\3\0\18\6\1\0'\a\4\0'\b\5\0'\t\6\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\a\0'\t\b\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\t\0'\t\n\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\v\0'\t\f\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\r\0'\t\14\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\15\0'\t\16\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\17\0'\t\18\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\19\0'\t\20\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\21\0'\t\22\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\23\0'\b\24\0'\t\25\0\18\n\2\0B\4\6\1K\0\1\0.<Cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-h>\6i&<Cmd>lua vim.lsp.buf.rename()<CR>\16<leader>vrn*<Cmd>lua vim.lsp.buf.references()<CR>\16<leader>vrr+<Cmd>lua vim.lsp.buf.code_action()<CR>\16<leader>vca,<Cmd>lua vim.diagnostic.goto_prev()<CR>\a]d,<Cmd>lua vim.diagnostic.goto_next()<CR>\a[d-<Cmd>lua vim.diagnostic.open_float()<CR>\15<leader>vd0<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>\16<leader>vws%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2õ\1\1\0\v\0\b\0\0176\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0009\b\5\b5\n\6\0=\1\a\nB\b\2\1E\6\3\3R\6˘\127K\0\1\0\14on_attach\1\0\1\14on_attach\0\nsetup\vipairs\1\4\0\0\nts_ls\fpyright\ngopls\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\14direction\15horizontal\tsize\3\15\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÜ\2\0\0\a\0\15\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0015\0\6\0006\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\1K\0\1\0\25:NvimTreeRefresh<CR>\n<C-r>\24:NvimTreeToggle<CR>\n<C-d>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\tview\1\0\1\tview\0\1\0\1\tside\nright\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\næ\4\0\0\5\0\26\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\2B\0\2\0016\0\r\0009\0\14\0'\1\16\0=\1\15\0006\0\r\0009\0\14\0'\1\18\0=\1\17\0006\0\r\0009\0\14\0)\1c\0=\1\19\0006\0\r\0009\0\20\0+\1\2\0=\1\21\0006\0\r\0009\0\20\0'\1\23\0=\1\22\0006\0\r\0009\0\24\0'\2\25\0B\0\2\1K\0\1\0g        autocmd BufWinLeave * silent! mkview\n        autocmd BufWinEnter * silent! loadview\n      \bcmd\0061\15foldcolumn\15foldenable\bopt\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\tfold\fdisable\1\0\2\venable\2\fdisable\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\4\vindent\0\21ensure_installed\0\tfold\0\14highlight\0\1\6\0\0\6c\blua\vpython\ago\15javascript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oneokai.nvim"] = {
    config = { "\27LJ\2\n~\0\0\3\0\t\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\24colorscheme oneokai\bcmd\tneon\18oneokai_style\6g\tdark\15background\6o\bvim\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/oneokai.nvim",
    url = "https://github.com/AxelGard/oneokai.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÏ\1\0\0\a\0\f\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\1K\0\1\0\29:Telescope live_grep<CR>\n<C-f>\30:Telescope find_files<CR>\n<C-p>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/vim-sensible",
    url = "https://github.com/tpope/vim-sensible"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\nÅ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0b      let test#strategy = \"toggleterm\"\n      let test#toggleterm#position = 'horizontal'\n    \bcmd\bvim\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n∑\b\0\0\5\0'\0T6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\v\0005\4\f\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\15\0005\4\16\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\17\0005\4\18\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\19\0005\4\20\0B\0\4\0016\0\21\0'\2\22\0B\0\2\0029\0\23\0005\2#\0005\3\25\0005\4\24\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\3=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\3\ndelay\3Ë\a\18virt_text_pos\beol\14virt_text\2\nsigns\1\0\4\28current_line_blame_opts\0\nsigns\0\23current_line_blame\2!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\b‚Äæ\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\5\badd\0\17changedelete\0\14topdelete\0\vdelete\0\vchange\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\1\0\1\tlink\21GitSignsDeleteLn\21GitSignsDeleteLn\1\0\1\tlink\21GitSignsChangeLn\21GitSignsChangeLn\1\0\1\tlink\18GitSignsAddLn\18GitSignsAddLn\1\0\1\tlink\21GitSignsDeleteNr\21GitSignsDeleteNr\1\0\1\tlink\21GitSignsChangeNr\21GitSignsChangeNr\1\0\1\tlink\18GitSignsAddNr\18GitSignsAddNr\1\0\1\tlink\20GitGutterDelete\19GitSignsDelete\1\0\1\tlink\20GitGutterChange\19GitSignsChange\1\0\1\tlink\17GitGutterAdd\16GitSignsAdd\16nvim_set_hl\bapi\bvim\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: CopilotChat.nvim
time([[Config for CopilotChat.nvim]], true)
try_loadstring("\27LJ\2\nπ\a\0\0\a\0)\2=6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0046\6\a\0009\6\b\0069\6\t\6\24\6\0\6B\4\2\2=\4\n\0036\4\a\0009\4\b\0049\4\v\4\23\4\1\4=\4\f\0036\4\a\0009\4\b\0049\4\t\4=\4\r\3=\3\14\0025\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\3=\3 \2B\0\2\0015\0!\0006\1\a\0009\1\"\0019\1#\1'\3$\0'\4%\0'\5&\0\18\6\0\0B\1\5\0016\1\a\0009\1\"\0019\1#\1'\3$\0'\4'\0'\5(\0\18\6\0\0B\1\5\1K\0\1\0\26:CopilotChatClose<CR>\n<C-x>\25:CopilotChatOpen<CR>\n<C-c>\6n\20nvim_set_keymap\bapi\1\0\2\vsilent\2\fnoremap\2\rmappings\24show_user_selection\1\0\1\vnormal\ags\23show_system_prompt\1\0\1\vnormal\agp\14show_diff\1\0\1\vnormal\agd\14yank_diff\1\0\1\vnormal\agy\16accept_diff\1\0\2\vnormal\n<C-y>\vinsert\n<C-y>\18submit_prompt\1\0\2\vnormal\n<C-m>\vinsert\n<C-m>\nreset\1\0\2\vnormal\n<C-r>\vinsert\n<C-r>\nclose\1\0\b\16accept_diff\0\nreset\0\18submit_prompt\0\14show_diff\0\14yank_diff\0\23show_system_prompt\0\nclose\0\24show_user_selection\0\1\0\2\vnormal\n<C-q>\vinsert\n<C-q>\vwindow\bcol\vheight\nlines\nwidth\fcolumns\6o\bvim\nfloor\tmath\1\0\b\rrelative\vcursor\vborder\frounded\brow\3\1\bcol\0\ntitle\17Copilot Chat\vheight\0\nwidth\0\vlayout\nfloat\1\0\4\vwindow\0\14show_help\2\ndebug\2\rmappings\0\nsetup\16CopilotChat\frequireÁÃô≥\6≥ÊÃ˛\3\n\0", "config", "CopilotChat.nvim")
time([[Config for CopilotChat.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nº\3\0\0\a\0\19\0*6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0015\0\6\0006\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\17\0'\5\18\0\18\6\0\0B\1\5\1K\0\1\0+<Cmd>Lspsaga show_line_diagnostics<CR>\r<space>d\28<Cmd>Lspsaga rename<CR>\agr%<Cmd>Lspsaga peek_definition<CR>\agd <Cmd>Lspsaga lsp_finder<CR>\agh\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\26code_action_lightbulb\1\0\1\26code_action_lightbulb\0\1\0\1\venable\1\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: oneokai.nvim
time([[Config for oneokai.nvim]], true)
try_loadstring("\27LJ\2\n~\0\0\3\0\t\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\24colorscheme oneokai\bcmd\tneon\18oneokai_style\6g\tdark\15background\6o\bvim\0", "config", "oneokai.nvim")
time([[Config for oneokai.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fluasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\14direction\15horizontal\tsize\3\15\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n∏\6\0\2\v\0\26\0K5\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\4\3\0\18\6\1\0'\a\4\0'\b\5\0'\t\6\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\a\0'\t\b\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\t\0'\t\n\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\v\0'\t\f\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\r\0'\t\14\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\15\0'\t\16\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\17\0'\t\18\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\19\0'\t\20\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\4\0'\b\21\0'\t\22\0\18\n\2\0B\4\6\1\18\4\3\0\18\6\1\0'\a\23\0'\b\24\0'\t\25\0\18\n\2\0B\4\6\1K\0\1\0.<Cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-h>\6i&<Cmd>lua vim.lsp.buf.rename()<CR>\16<leader>vrn*<Cmd>lua vim.lsp.buf.references()<CR>\16<leader>vrr+<Cmd>lua vim.lsp.buf.code_action()<CR>\16<leader>vca,<Cmd>lua vim.diagnostic.goto_prev()<CR>\a]d,<Cmd>lua vim.diagnostic.goto_next()<CR>\a[d-<Cmd>lua vim.diagnostic.open_float()<CR>\15<leader>vd0<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>\16<leader>vws%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2õ\1\1\0\v\0\b\0\0176\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0009\b\5\b5\n\6\0=\1\a\nB\b\2\1E\6\3\3R\6˘\127K\0\1\0\14on_attach\1\0\1\14on_attach\0\nsetup\vipairs\1\4\0\0\nts_ls\fpyright\ngopls\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\nÅ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0b      let test#strategy = \"toggleterm\"\n      let test#toggleterm#position = 'horizontal'\n    \bcmd\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÜ\2\0\0\a\0\15\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0015\0\6\0006\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\a\0009\1\b\0019\1\t\1'\3\n\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\1K\0\1\0\25:NvimTreeRefresh<CR>\n<C-r>\24:NvimTreeToggle<CR>\n<C-d>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\tview\1\0\1\tview\0\1\0\1\tside\nright\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lazy.nvim
time([[Config for lazy.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "lazy.nvim")
time([[Config for lazy.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÏ\1\0\0\a\0\f\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\1K\0\1\0\29:Telescope live_grep<CR>\n<C-f>\30:Telescope find_files<CR>\n<C-p>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireü\5\1\0\n\0#\0L6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\b\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0069\a\b\0009\a\15\aB\a\1\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\a5\t\20\0B\a\2\2=\a\21\6B\4\2\2=\4\b\0039\4\22\0009\4\23\0044\6\3\0005\a\24\0>\a\1\0065\a\25\0>\a\2\0064\a\3\0005\b\26\0>\b\1\aB\4\3\2=\4\23\3B\1\2\0019\1\2\0009\1\27\1'\3\28\0005\4\30\0004\5\3\0005\6\29\0>\6\1\5=\5\23\4B\1\3\0019\1\2\0009\1\27\1'\3\31\0005\4\"\0009\5\22\0009\5\23\0054\a\3\0005\b \0>\b\1\a4\b\3\0005\t!\0>\t\1\bB\5\3\2=\5\23\4B\1\3\1K\0\1\0\1\0\1\fsources\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\1\fsources\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\5\n<C-e>\0\n<C-f>\0\14<C-Space>\0\n<C-d>\0\t<CR>\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\3\fmapping\0\fsnippet\0\fsources\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\næ\4\0\0\5\0\26\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\2B\0\2\0016\0\r\0009\0\14\0'\1\16\0=\1\15\0006\0\r\0009\0\14\0'\1\18\0=\1\17\0006\0\r\0009\0\14\0)\1c\0=\1\19\0006\0\r\0009\0\20\0+\1\2\0=\1\21\0006\0\r\0009\0\20\0'\1\23\0=\1\22\0006\0\r\0009\0\24\0'\2\25\0B\0\2\1K\0\1\0g        autocmd BufWinLeave * silent! mkview\n        autocmd BufWinEnter * silent! loadview\n      \bcmd\0061\15foldcolumn\15foldenable\bopt\14foldlevel\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\6o\bvim\tfold\fdisable\1\0\2\venable\2\fdisable\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\4\vindent\0\21ensure_installed\0\tfold\0\14highlight\0\1\6\0\0\6c\blua\vpython\ago\15javascript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\n¢\3\0\0\6\0\14\1\0296\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\a\0)\1\0\0=\1\b\0006\0\0\0009\0\a\0*\1\0\0=\1\t\0006\0\0\0009\0\a\0)\1\0\0=\1\n\0006\0\0\0009\0\a\0)\1\1\0=\1\v\0006\0\0\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0O        autocmd FileType lazygit setlocal nonumber norelativenumber\n      \bcmd\30lazygit_use_neovim_remote(lazygit_floating_window_use_plenary+lazygit_floating_window_scaling_factor%lazygit_floating_window_winblend\6g\1\0\2\vsilent\2\fnoremap\2\17:LazyGit<CR>\15<leader>gg\6n\20nvim_set_keymap\bapi\bvimõ≥ÊÃ\25Ãô≥ˇ\3\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'copilot.lua'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
