local M = {}

local settings = {
  yaml = {
    keyOrdering = false,
  },
}

M.setup = function(on_attach, capabilities)
  require('lspconfig').yamlls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  })
end

return M
