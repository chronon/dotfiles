local u = require('config.utils')

local settings = {
  intelephense = {
    telemetry = {
      enabled = false,
    },
    environment = {
      phpVersion = '8.2',
    },
    format = {
      braces = 'psr12',
    },
  },
}

settings = u.project_settings(settings)

local M = {}

M.setup = function(on_attach, capabilities)
  require('lspconfig').intelephense.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  })
end

return M
