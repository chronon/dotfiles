require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'bash',
    'css',
    'dockerfile',
    'fish',
    'html',
    'javascript',
    'json',
    'lua',
    'markdown',
    'php',
    'phpdoc',
    'scss',
    'typescript',
    'yaml',
  },
  highlight = {
    enable = true,
    disable = { 'php' },
    -- disable = function(_, bufnr)
    --   return vim.api.nvim_buf_line_count(bufnr) > 5000
    -- end,
  }
})
