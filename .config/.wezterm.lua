-- create a file in %HOME%/.wezterm.lua for win
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = { 'pwsh.exe', '-NoLogo' }
table.insert(launch_menu, {
  label = 'PowerShell',
  args = { 'powershell.exe', '-NoLogo' },
})

table.insert(launch_menu, {
  label = 'Pwsh',
  args = { 'pwsh.exe', '-NoLogo' },
})

config.color_scheme = 'Tokyo Night'
config.font = wezterm.font("CaskaydiaCove NF")
config.font_size = 19
config.line_height = 1.2
config.window_padding = {
  left = 15,
  right = 10,
  top = 15,
  bottom = 15,
}

config.window_background_opacity = 0.95

config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}

config.window_decorations = "RESIZE"

config.max_fps = 120
config.default_cursor_style = 'BlinkingBar'

return config

