local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
  'Maple Mono NF CN',
}
config.font_size = 10
config.freetype_load_target = "Light"

config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.colors = {
    foreground = "#FFFFFF",
    background = "#000000",
    ansi = {
      "#000000",
      "#CC0403",
      "#19CB00",
      "#CECB00",
      "#0D73CC",
      "#CB1ED1",
      "#0DCDCD",
      "#DDDDDD",
    },
    
    brights = {
      "#767676",
      "#F2201F",
      "#23FD00",
      "#FFFD00",
      "#1A8FFF",
      "#FD28FF",
      "#14FFFF",
      "#FFFFFF",
    },
}

config.initial_cols = 120
config.initial_rows = 30

return config
