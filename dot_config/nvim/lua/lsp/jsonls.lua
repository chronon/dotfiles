local M = {}

local settings = {
  json = {
    schemas = require('schemastore').json.schemas {},
    validate = { enable = true },
  },
}

M.setup = function(on_attach, capabilities)
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  require('lspconfig').jsonls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  })
end

return M
