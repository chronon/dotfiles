local function trailing()
  local mode = vim.api.nvim_get_mode()
  if (mode.mode == 'n') then
    local line_num = vim.fn.search([[\s\+$]], 'nwc')
    return line_num ~= 0 and ' ' .. line_num or ''
  else
    return ''
  end
end

require('lualine').setup({
  sections = {
    lualine_c = {
      {
        'filename',
        path = 1,
      },
      { trailing }
    },
  },
})
