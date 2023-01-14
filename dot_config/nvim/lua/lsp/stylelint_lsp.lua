local settings = {
  stylelintplus = {
    autoFixOnFormat = true,
    -- defaults:
    -- validateOnSave = false,
    -- validateOnType = true,
  }
}

local filetypes = {
  'css',
  'scss',
}

local M = {}

M.setup = function(on_attach, capabilities)
  require('lspconfig').stylelint_lsp.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
    filetypes = filetypes,
  })
end

return M
