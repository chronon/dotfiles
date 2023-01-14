local get_map_options = function(custom_options)
  local options = { silent = true }
  if custom_options then
    options = vim.tbl_extend('force', options, custom_options)
  end
  return options
end

local M = {}

M.map = function(mode, target, source, opts)
  vim.keymap.set(mode, target, source, get_map_options(opts))
end

for _, mode in ipairs({ 'n', 'o', 'i', 'x', 't', 'c' }) do
  M[mode .. 'map'] = function(...)
    M.map(mode, ...)
  end
end

M.buf_map = function(bufnr, mode, target, source, opts)
  opts = opts or {}
  opts.buffer = bufnr

  M.map(mode, target, source, get_map_options(opts))
end

M.project_settings = function(settings)
  local cfg_file = loadfile(vim.fn.getcwd() .. '/.vscode/lspconfig.lua')
  if cfg_file ~= nil then
    local cfg = cfg_file()
    if cfg ~= nil then
      settings = vim.tbl_deep_extend('force', settings, cfg)
    end
  end
  return settings
end

return M
