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
  require('lspconfig').lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  })
end

return M
