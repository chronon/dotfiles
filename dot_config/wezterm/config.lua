local colorscheme = require("colorschemes")

local config = {
  font_size = 15,
  default_prog = { "/usr/local/bin/fish", "-l" },
  initial_rows = 100,
  initial_cols = 170,
  window_decorations = "RESIZE",
  force_reverse_video_cursor = true,

  color_scheme = colorscheme.wezterm,
  set_environment_variables = {
    COLORSCHEME_FISH = colorscheme.fish,
    COLORSCHEME_NVIM = colorscheme.nvim,
  },
}

return config
