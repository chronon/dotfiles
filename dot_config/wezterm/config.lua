local wezterm = require('wezterm')
local colorscheme = 'kanagawa'

local config = {
  font = wezterm.font 'JetBrains Mono',
  font_size = 15,
  default_prog = { '/usr/local/bin/fish', '-l' },
  initial_rows = 100,
  initial_cols = 170,
  window_decorations = 'RESIZE',
  set_environment_variables = {
    COLORSCHEME = colorscheme,
  },
  color_scheme = colorscheme,
  force_reverse_video_cursor = true,
}

return config
