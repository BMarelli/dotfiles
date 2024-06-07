local wezterm = require("wezterm")
local util = require("util")
local neovim = require("neovim")

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

local is_linux = wezterm.target_triple:find("linux") ~= nil
local is_macos = wezterm.target_triple:find("apple") ~= nil

config.color_scheme = "Catppuccin Frappe"

config.font = wezterm.font({
  family = "Monaspace Neon",
  harfbuzz_features = { "ss01", "calt" },
})

-- performance issues: https://github.com/wez/wezterm/issues/2669
config.window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW"
-- wayland issues: https://github.com/wez/wezterm/issues/5103
config.enable_wayland = false

config.max_fps = 120
config.enable_tab_bar = false
config.inactive_pane_hsb = {}

config.adjust_window_size_when_changing_font_size = false
config.allow_win32_input_mode = false
config.window_close_confirmation = "NeverPrompt"

config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

local mod = "CTRL"
if is_linux then
  mod = "CTRL"
  config.font_size = 11
  config.leader = { key = " ", mods = "CTRL", timeout_milliseconds = 1500 }
end

if is_macos then
  mod = "OPT"
  config.font_size = 14
  config.leader = { key = " ", mods = "OPT", timeout_milliseconds = 1500 }
end

config.keys = {
  neovim.forward_or_default("LeftArrow", mod, util.focus_relative_fn("Left")),
  neovim.forward_or_default("DownArrow", mod, util.focus_relative_fn("Down")),
  neovim.forward_or_default("UpArrow", mod, util.focus_relative_fn("Up")),
  neovim.forward_or_default("RightArrow", mod, util.focus_relative_fn("Right")),
  { key = "+", mods = "LEADER|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "-", mods = "LEADER",       action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "f", mods = "LEADER",       action = wezterm.action.TogglePaneZoomState },

  { key = "q", mods = "LEADER",       action = wezterm.action.CloseCurrentPane({ confirm = true }) },
}

return config
