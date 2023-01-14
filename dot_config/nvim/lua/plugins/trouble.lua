local u = require('config.utils')

require('trouble').setup()

u.nmap('<leader>p', '<cmd>TroubleToggle<cr>')
