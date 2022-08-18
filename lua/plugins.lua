local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'dracula/vim', as = 'dracula'}
end)
