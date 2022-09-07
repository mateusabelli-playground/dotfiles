local status_mason, mason = pcall(require, "mason")
if (not status_mason) then return end

local status_masonlspc, lspconfig = pcall(require, "mason-lspconfig")
if (not status_masonlspc) then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

lspconfig.setup {
  ensure_installed = { "sumneko_lua" }
}
