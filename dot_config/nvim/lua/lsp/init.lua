local u = require('config.utils')

local on_attach = function(client, bufnr)
  u.buf_map(bufnr, 'n', '<leader>D', vim.lsp.buf.declaration)
  u.buf_map(bufnr, 'n', '<leader>d', vim.lsp.buf.definition)
  u.buf_map(bufnr, 'n', 'K', vim.lsp.buf.hover)
  u.buf_map(bufnr, 'n', '<C-k>', vim.lsp.buf.signature_help)
  u.buf_map(bufnr, 'n', '<leader>i', vim.lsp.buf.implementation)
  u.buf_map(bufnr, 'n', '<leader>D', vim.lsp.buf.type_definition)
  u.buf_map(bufnr, 'n', '<leader>rn', vim.lsp.buf.rename)
  u.buf_map(bufnr, 'n', '<leader>a', vim.lsp.buf.code_action)
  u.buf_map(bufnr, 'n', '<leader>c', vim.lsp.buf.references)
  u.buf_map(bufnr, 'n', '<leader>f', function() vim.lsp.buf.format { async = true } end)
  u.buf_map(bufnr, 'v', '<leader>vf', vim.lsp.buf.range_formatting)

  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
end

local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

for _, server in ipairs({
  'cssls',
  'emmet',
  'eslint',
  'html',
  'intelephense',
  'jsonls',
  'stylelint_lsp',
  'lua_ls',
  'tsserver',
  'yamlls',
  'tailwindcss',
}) do
  require('lsp.' .. server).setup(on_attach, capabilities)
end
