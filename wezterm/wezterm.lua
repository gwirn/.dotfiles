local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- config.color_scheme = "s3r0 modified (terminal.sexy)"

config.font_size = 13.0
config.window_decorations = "RESIZE"
config.default_cursor_style = "SteadyBar"

config.audible_bell = "Disabled"
config.font = wezterm.font_with_fallback({
	"Noto Sans Mono",
	"DejaVu Sans Mono",
	"JetBrains Mono",
	"Apple Color Emoji",
})
config.mouse_bindings = {
	-- Bind 'Up' event of CTRL-Click to open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.OpenLinkAtMouseCursor,
	},
	-- Disable the 'Down' event of CTRL-Click to avoid weird program behaviors
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.Nop,
	},
}
local theme = require("colors/misty")
config.colors = theme
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 1.0,
}
-- config.colors = {
-- 	cursor_bg = "orange",
-- }
return config
