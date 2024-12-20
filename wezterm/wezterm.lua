local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Elemental"
-- config.color_scheme = "Equilibrium Dark (base16)"
-- config.color_scheme = "Sweet Love (terminal.sexy)"
config.color_scheme = "s3r0 modified (terminal.sexy)"

-- config.enable_tab_bar = false
config.font_size = 13.0
config.window_decorations = "RESIZE"
config.default_cursor_style = "SteadyBar"

config.audible_bell = "Disabled"
config.font = wezterm.font_with_fallback({ "JetBrains Mono", "Apple Color Emoji" })
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
config.colors = {
	cursor_bg = "orange",
}

-- config.send_composed_key_when_left_alt_is_pressed = true

-- and finally, return the configuration to wezterm
return config
