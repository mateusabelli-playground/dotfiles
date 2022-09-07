local status_ts, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status_ts) then return end

treesitter.setup {
  highlight = {
    enable = true,
  },
  ensure_installed = {
    "lua"
  },
}
