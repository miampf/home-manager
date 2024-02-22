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
local package_path_str = "/home/miampf/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?.lua;/home/miampf/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?/init.lua;/home/miampf/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?.lua;/home/miampf/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/miampf/.cache/nvim/packer_hererocks/2.1.1702233742/lib/lua/5.1/?.so"
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
  ["Dockerfile.vim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/Dockerfile.vim",
    url = "https://github.com/ekalinin/Dockerfile.vim"
  },
  ["arshamiser.nvim"] = {
    config = { "\27LJ\2\n¾\2\0\0\4\0\16\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0016\0\4\0'\2\5\0B\0\2\0016\0\6\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\n\0'\1\v\0=\1\t\0006\0\0\0009\0\f\0009\0\r\0'\2\14\0'\3\15\0B\0\3\1K\0\1\0004%{%v:lua.require(\"arshamiser.tabline\").draw()%}\ftabline\20nvim_set_option\bapi\28v:lua.custom_foldtext()\bopt\rfoldtext\23arshamiser.folding\20custom_foldtext\a_G\25arshamiser.feliniser\frequire\15catppuccin\16colorscheme\bcmd\bvim\0" },
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/arshamiser.nvim",
    url = "https://github.com/arsham/arshamiser.nvim"
  },
  ["arshlib.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/arshlib.nvim",
    url = "https://github.com/arsham/arshlib.nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  chadtree = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/chadtree",
    url = "https://github.com/ms-jpq/chadtree"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/famiu/feline.nvim"
  },
  ["heirline.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/heirline.nvim",
    url = "https://github.com/rebelot/heirline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["listish.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/listish.nvim",
    url = "https://github.com/arsham/listish.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["omnisharp-vim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/omnisharp-vim",
    url = "https://github.com/OmniSharp/omnisharp-vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["pandoc.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vpandoc\frequire\0" },
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/pandoc.nvim",
    url = "https://github.com/aspeddro/pandoc.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sqls.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/sqls.nvim",
    url = "https://github.com/nanotee/sqls.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["typst.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/opt/typst.vim",
    url = "https://github.com/kaarmu/typst.vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-crystal"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-crystal",
    url = "https://github.com/vim-crystal/vim-crystal"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-just"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-just",
    url = "https://github.com/NoahTheDuke/vim-just"
  },
  ["vim-rustfmt"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-rustfmt",
    url = "https://github.com/alx741/vim-rustfmt"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  vimtex = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["wrapping.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19create_keymaps\1\nsetup\rwrapping\frequire\0" },
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/wrapping.nvim",
    url = "https://github.com/andrewferrier/wrapping.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  },
  ["zig.vim"] = {
    loaded = true,
    path = "/home/miampf/.local/share/nvim/site/pack/packer/start/zig.vim",
    url = "https://github.com/ziglang/zig.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: pandoc.nvim
time([[Config for pandoc.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vpandoc\frequire\0", "config", "pandoc.nvim")
time([[Config for pandoc.nvim]], false)
-- Config for: arshamiser.nvim
time([[Config for arshamiser.nvim]], true)
try_loadstring("\27LJ\2\n¾\2\0\0\4\0\16\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0016\0\4\0'\2\5\0B\0\2\0016\0\6\0006\1\4\0'\3\b\0B\1\2\0029\1\t\1=\1\a\0006\0\0\0009\0\n\0'\1\v\0=\1\t\0006\0\0\0009\0\f\0009\0\r\0'\2\14\0'\3\15\0B\0\3\1K\0\1\0004%{%v:lua.require(\"arshamiser.tabline\").draw()%}\ftabline\20nvim_set_option\bapi\28v:lua.custom_foldtext()\bopt\rfoldtext\23arshamiser.folding\20custom_foldtext\a_G\25arshamiser.feliniser\frequire\15catppuccin\16colorscheme\bcmd\bvim\0", "config", "arshamiser.nvim")
time([[Config for arshamiser.nvim]], false)
-- Config for: wrapping.nvim
time([[Config for wrapping.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19create_keymaps\1\nsetup\rwrapping\frequire\0", "config", "wrapping.nvim")
time([[Config for wrapping.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType typst ++once lua require("packer.load")({'typst.vim'}, { ft = "typst" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/miampf/.local/share/nvim/site/pack/packer/opt/typst.vim/ftdetect/typst.vim]], true)
vim.cmd [[source /home/miampf/.local/share/nvim/site/pack/packer/opt/typst.vim/ftdetect/typst.vim]]
time([[Sourcing ftdetect script at: /home/miampf/.local/share/nvim/site/pack/packer/opt/typst.vim/ftdetect/typst.vim]], false)
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
