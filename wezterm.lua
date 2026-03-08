--[[
-- references:
-- * <https://wezterm.org/config/lua/general.html>
--]]

local wezterm = require("wezterm")
local config = {}
local act = wezterm.action
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.color_scheme = "Dracula"
config.scrollback_lines = 5000
config.keys = {
	{ key = "LeftArrow", mods = "OPT", action = act.SendKey({ key = "b", mods = "ALT" }) },
	{ key = "RightArrow", mods = "OPT", action = act.SendKey({ key = "f", mods = "ALT" }) },
}
return config
