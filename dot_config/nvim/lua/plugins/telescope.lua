local u = require('config.utils')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      'composer.lock',
      'package-lock.json',
      'yarn.lock',
    },
  },
  -- pickers = {
  --   find_files = {
  --     hidden = true,
  --   },
  -- },
}

u.nmap('<C-p>', '<cmd>Telescope find_files<cr>')
u.nmap('<C-g>', '<cmd>Telescope live_grep<cr>')
u.nmap('<C-b>', '<cmd>Telescope buffers<cr>')
u.nmap('<C-s>', '<cmd>Telescope lsp_document_symbols<cr>')
u.nmap('<C-t>', '<cmd>Telescope treesitter<cr>')
u.nmap('<C-m>', '<cmd>Telescope lsp_document_symbols default_text=:method:<cr>')
u.nmap('<C-c>', '<cmd>Telescope commands<cr>')
u.nmap('<C-f>', '<cmd>Telescope file_browser<cr>')
u.nmap('<leader>tw', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]])
