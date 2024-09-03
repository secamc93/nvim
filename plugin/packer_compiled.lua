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
    config = { "\27LJ\2\n³\6\0\0\b\0!\00246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0046\6\a\0009\6\b\0069\6\t\6\24\6\0\6B\4\2\2=\4\n\0036\4\a\0009\4\b\0049\4\v\4\23\4\1\4=\4\f\0036\4\a\0009\4\b\0049\4\t\0046\5\5\0009\5\6\0056\a\a\0009\a\b\a9\a\t\a\24\a\0\aB\5\2\2!\4\5\4=\4\r\3=\3\14\0025\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\3=\3 \2B\0\2\1K\0\1\0\rmappings\24show_user_selection\1\0\1\vnormal\ags\23show_system_prompt\1\0\1\vnormal\agp\14show_diff\1\0\1\vnormal\agd\14yank_diff\1\0\1\vnormal\agy\16accept_diff\1\0\2\vinsert\n<C-y>\vnormal\n<C-y>\18submit_prompt\1\0\2\vinsert\n<C-m>\vnormal\n<C-m>\nreset\1\0\2\vinsert\n<C-r>\vnormal\n<C-r>\nclose\1\0\b\14show_diff\0\18submit_prompt\0\14yank_diff\0\23show_system_prompt\0\16accept_diff\0\24show_user_selection\0\nclose\0\nreset\0\1\0\2\vinsert\n<C-q>\vnormal\n<C-q>\vwindow\bcol\vheight\nlines\nwidth\fcolumns\6o\bvim\nfloor\tmath\1\0\b\bcol\0\rrelative\veditor\brow\3\1\vlayout\nfloat\ntitle\17Copilot Chat\vborder\vsingle\vheight\0\nwidth\0\1\0\4\vwindow\0\14show_help\2\rmappings\0\ndebug\2\nsetup\16CopilotChat\frequireçÌ™³\6³æÌþ\3\4\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/CopilotChat.nvim",
    url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
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
    config = { "\27LJ\2\nˆ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\npanel\1\0\1\fenabled\2\15suggestion\1\0\2\npanel\0\15suggestion\0\1\0\1\fenabled\2\nsetup\fcopilot\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/copilot.lua",
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
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["lazy.nvim"] = {
    config = { "\27LJ\2\nò\1\0\0\4\0\f\0\0286\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\a\0005\3\6\0=\3\b\2B\0\2\0016\0\3\0'\2\t\0B\0\2\0029\0\5\0B\0\1\0016\0\3\0'\2\n\0B\0\2\0029\0\5\0B\0\1\0016\0\3\0'\2\v\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\rgitsigns\15bufferline\14nvim-tree\foptions\1\0\1\foptions\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\27colorscheme tokyonight\bcmd\bvim\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lazy.nvim",
    url = "https://github.com/folke/lazy.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
  ["vim-go"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/home/cam/.local/share/nvim/site/pack/packer/start/vim-sensible",
    url = "https://github.com/tpope/vim-sensible"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: CopilotChat.nvim
time([[Config for CopilotChat.nvim]], true)
try_loadstring("\27LJ\2\n³\6\0\0\b\0!\00246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0046\6\a\0009\6\b\0069\6\t\6\24\6\0\6B\4\2\2=\4\n\0036\4\a\0009\4\b\0049\4\v\4\23\4\1\4=\4\f\0036\4\a\0009\4\b\0049\4\t\0046\5\5\0009\5\6\0056\a\a\0009\a\b\a9\a\t\a\24\a\0\aB\5\2\2!\4\5\4=\4\r\3=\3\14\0025\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\3=\3 \2B\0\2\1K\0\1\0\rmappings\24show_user_selection\1\0\1\vnormal\ags\23show_system_prompt\1\0\1\vnormal\agp\14show_diff\1\0\1\vnormal\agd\14yank_diff\1\0\1\vnormal\agy\16accept_diff\1\0\2\vinsert\n<C-y>\vnormal\n<C-y>\18submit_prompt\1\0\2\vinsert\n<C-m>\vnormal\n<C-m>\nreset\1\0\2\vinsert\n<C-r>\vnormal\n<C-r>\nclose\1\0\b\14show_diff\0\18submit_prompt\0\14yank_diff\0\23show_system_prompt\0\16accept_diff\0\24show_user_selection\0\nclose\0\nreset\0\1\0\2\vinsert\n<C-q>\vnormal\n<C-q>\vwindow\bcol\vheight\nlines\nwidth\fcolumns\6o\bvim\nfloor\tmath\1\0\b\bcol\0\rrelative\veditor\brow\3\1\vlayout\nfloat\ntitle\17Copilot Chat\vborder\vsingle\vheight\0\nwidth\0\1\0\4\vwindow\0\14show_help\2\rmappings\0\ndebug\2\nsetup\16CopilotChat\frequireçÌ™³\6³æÌþ\3\4\0", "config", "CopilotChat.nvim")
time([[Config for CopilotChat.nvim]], false)
-- Config for: copilot.lua
time([[Config for copilot.lua]], true)
try_loadstring("\27LJ\2\nˆ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\npanel\1\0\1\fenabled\2\15suggestion\1\0\2\npanel\0\15suggestion\0\1\0\1\fenabled\2\nsetup\fcopilot\frequire\0", "config", "copilot.lua")
time([[Config for copilot.lua]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: lazy.nvim
time([[Config for lazy.nvim]], true)
try_loadstring("\27LJ\2\nò\1\0\0\4\0\f\0\0286\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\a\0005\3\6\0=\3\b\2B\0\2\0016\0\3\0'\2\t\0B\0\2\0029\0\5\0B\0\1\0016\0\3\0'\2\n\0B\0\2\0029\0\5\0B\0\1\0016\0\3\0'\2\v\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\rgitsigns\15bufferline\14nvim-tree\foptions\1\0\1\foptions\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\27colorscheme tokyonight\bcmd\bvim\0", "config", "lazy.nvim")
time([[Config for lazy.nvim]], false)

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
