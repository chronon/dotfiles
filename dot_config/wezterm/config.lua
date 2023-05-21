local colorscheme = "kanagawa"

local colorschemes = {
  kanagawa = {
    wezterm = "Kanagawa (Gogh)",
    fish = "kanagawa.fish",
    nvim = "kanagawa",
  },
  tokyonight = {
    wezterm = "Tokyo Night",
    fish = "tokyonight_night.fish",
    nvim = "tokyonight-night",
  },
}

local config = {
  font_size = 15,
  default_prog = { "/usr/local/bin/fish", "-l" },
  initial_rows = 100,
  initial_cols = 170,
  window_decorations = "RESIZE",
  force_reverse_video_cursor = true,

  color_scheme = colorschemes[colorscheme].wezterm,
  set_environment_variables = {
    COLORSCHEME_FISH = colorschemes[colorscheme].fish,
    COLORSCHEME_NVIM = colorschemes[colorscheme].nvim,
  },
}

return config
