local settings = {
  Lua = {
    diagnostics = {
      globals = {
        'vim',
        'use',
      },
    },
    telemetry = {
      enable = false
    },
  },
}

local M = {}

M.setup = function(on_attach, capabilities)
  require('lspconfig').sumneko_lua.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  })
end

return M
