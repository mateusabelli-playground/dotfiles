local colorscheme = "dracula"

local status_theme, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_theme then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- Make nvim background transparent
vim.cmd [[hi Normal guibg=none ctermbg=none]]
