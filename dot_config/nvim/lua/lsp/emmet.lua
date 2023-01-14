local M = {}

M.setup = function(on_attach, capabilities)
  require('lspconfig').emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'css', 'sass', 'scss' },
    -- init_options = {
    --   html = {
    --     options = {
    --       -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
    --       ['bem.enabled'] = true,
    --     },
    --   },
    -- }
  })
end

return M
