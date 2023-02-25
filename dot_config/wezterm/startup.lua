local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab_0, pane_0, window = mux.spawn_window(cmd or {})
  local tab_1, pane_1 = window:spawn_tab {}
  pane_1:split {
    size = 0.4,
    direction = 'Bottom',
  }
end)
