local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
  'Terminus',
  'WenQuanYi WenQuanYi Bitmap Song',
}
config.freetype_pcf_long_family_names = true
config.font_size = 12
config.freetype_load_target = "Mono"

config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.keys = {
  {
    key = 'F11',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
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
    cursor_bg = 'white',
}

local mux = wezterm.mux
wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():toggle_fullscreen()
end)

config.window_background_image = os.getenv("HOME") .. '/Pictures/background_wezterm.png'

config.window_background_image_hsb = {
  brightness = 0.1,
}

config.enable_wayland = false

config.audible_bell = "Disabled"

return config
