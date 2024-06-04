local wezterm = require("wezterm")
local util = require("util")
local neovim = require("neovim")

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Frappe"

config.font = wezterm.font({
  family = "Monaspace Neon",
  harfbuzz_features = { "ss01", "calt" },
})

config.font_size = 11

config.max_fps = 120
config.enable_tab_bar = false
config.inactive_pane_hsb = {}

config.adjust_window_size_when_changing_font_size = false
config.allow_win32_input_mode = false
config.window_close_confirmation = "NeverPrompt"

config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

config.leader = { key = " ", mods = "CTRL", timeout_milliseconds = 1000 }

config.keys = {
  neovim.forward_or_default("LeftArrow", "CTRL", util.focus_relative_fn("Left")),
  neovim.forward_or_default("DownArrow", "CTRL", util.focus_relative_fn("Down")),
  neovim.forward_or_default("UpArrow", "CTRL", util.focus_relative_fn("Up")),
  neovim.forward_or_default("RightArrow", "CTRL", util.focus_relative_fn("Right")),
  { key = "+", mods = "LEADER|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "-", mods = "LEADER",       action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "f", mods = "LEADER",       action = wezterm.action.TogglePaneZoomState },

  { key = "q", mods = "LEADER",       action = wezterm.action.CloseCurrentPane({ confirm = true }) },
}

return config
