local u = require('config.utils')

local api = vim.api

vim.g.mapleader = ','

vim.opt.termguicolors = true
vim.opt.showmatch = true
vim.opt.number = true
vim.opt.linebreak = true
vim.opt.cmdheight = 2
vim.opt.updatetime = 300
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.redrawtime = 10000
vim.opt.signcolumn = 'yes'
vim.opt.mouse = 'a'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

api.nvim_create_autocmd('FileType', {
  command = 'setlocal formatoptions-=cro',
})

api.nvim_create_autocmd('FileType', {
  pattern = { 'gitcommit', 'markdown' },
  command = 'setlocal spell',
})

u.nmap('<Leader>hh', '<Cmd>nohl<CR>')
u.nmap('<Leader>ac', '<Cmd>!docker-compose exec -T php bin/convert.php -w ../%<CR>')
u.nmap('<Leader>tsh', '<Cmd>TSBufToggle highlight<CR>')

u.xmap('<Leader>cc', '"+y')
u.xmap('<LeftRelease>', '"*ygv')
u.xmap('>', '>gv')
u.xmap('<', '<gv')

-- lazy loaded plugins
u.nmap('<leader>,', '<cmd>PackerLoad nvim-tree.lua<cr><cmd>NvimTreeToggle<cr>')

api.nvim_command("colorscheme $COLORSCHEME")

require('plugins')
require('lsp')