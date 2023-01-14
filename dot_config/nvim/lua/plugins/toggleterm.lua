local u = require('config.utils')

require('toggleterm').setup({
  shell = '/usr/local/bin/fish',
  direction = 'horizontal',
  float_opts = {
    width = 140,
    height = 15,
    border = 'curved',
  }
})

u.nmap('<leader>tth', '<cmd>ToggleTerm direction=horizontal<cr>')
u.nmap('<leader>ttf', '<cmd>ToggleTerm direction=float<cr>')
u.tmap('<esc>', [[<C-\><C-n><C-w><C-w>]])

vim.api.nvim_create_user_command('Permin', '1TermExec cmd="permin" direction=float', {})
vim.api.nvim_create_user_command('YarnWatch', '2TermExec cmd="yarn run watch" direction=float', {})
vim.api.nvim_create_user_command('NpmWatch', '3TermExec cmd="npm run watch" direction=float', {})
