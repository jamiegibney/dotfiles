local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

local font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })

-- VISUALS --

-- window
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.initial_rows = 70
config.initial_cols = 120
config.window_frame = {
    font = wezterm.font("JetBrains Mono", { weight = "ExtraBold" }),
}
config.window_padding = {
    left = "5px",
    right = "5px",
    top = "0.1cell",
    bottom = "5px",
}

-- color scheme
config.color_scheme = "Gruvbox"
config.colors = {
    -- background = "#282522",
    -- foreground = "#eae1d8",
    background = "#F1F1F1",
    foreground = "#000000",
    cursor_bg = "#bc5c00",
    cursor_fg = "#ffffff",
}

-- font
config.font = font
config.font_size = 15.8
config.line_height = 0.95
config.cursor_thickness = 3.0

-- cursor
config.cursor_blink_rate = 250
config.cursor_blink_ease_in = { CubicBezier = { 0.5, 0.0, 0.0, 0.0 } }
config.cursor_blink_ease_out = { CubicBezier = { 0.2, 0.0, 0.0, 0.0 } }
config.animation_fps = 20
config.force_reverse_video_cursor = true

-- GENERAL --

config.use_dead_keys = false
config.scrollback_lines = 5000
config.window_close_confirmation = "NeverPrompt"
config.default_cwd = "/Users/jamiegibney/Documents/dev/"
config.front_end = "WebGpu" -- comment this out to switch to OpenGL (default)

-- KEYBINDINGS --

config.keys = {
    {
        key = "w",
        mods = "CMD",
        action = wezterm.action.CloseCurrentTab({ confirm = false }),
    },

    {
        key = "K",
        mods = "CMD",
        action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
    },
}

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

return config
