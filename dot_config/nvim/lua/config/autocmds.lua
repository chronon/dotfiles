-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "php" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_del_augroup_by_name("lazyvim_highlight_yank")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  command = "setlocal spell",
})

vim.api.nvim_create_user_command("PhpStan", "! bin/phpstan analyse %", {})
