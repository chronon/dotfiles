local M = {}

M.setup = function(on_attach, capabilities)
  require('lspconfig').tailwindcss.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    -- filetypes = { 'html', 'css', 'sass', 'scss' },
    autostart = false,
  })
end

return M
