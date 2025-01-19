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
	"JetBrains Mono",
	"Apple Color Emoji",
})
local theme = require("colors/misty")
config.colors = theme
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9

-- config.colors = {
-- 	cursor_bg = "orange",
-- }

config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = "s",
		mods = "CTRL|ALT|SHIFT|WIN",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "l",
		mods = "CTRL|ALT|SHIFT|WIN",
		action = wezterm.action({ ActivatePaneDirection = "Next" }),
	},
	{
		key = "h",
		mods = "CTRL|ALT|SHIFT|WIN",
		action = wezterm.action({ ActivatePaneDirection = "Prev" }),
	},
	{
		key = "t",
		mods = "CTRL|ALT|SHIFT|WIN",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},

	{
		key = "z",
		mods = "CTRL|ALT|SHIFT|WIN",
		action = wezterm.action.ActivateTabRelative(1),
	},
}
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
return config
