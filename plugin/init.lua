local wezterm = require("wezterm")

local M = {}

M.colors = {
  foreground = "#C8C8BC",
  background = "#111411",
  cursor_bg = "#7DB880",
  cursor_fg = "#111411",
  cursor_border = "#7DB880",
  selection_bg = "#363A36",
  selection_fg = "#E4E4DC",
  split = "#363A36",
  ansi = {
    "#222522", -- Black
    "#C45B5B", -- Red
    "#7DB880", -- Green
    "#C9B458", -- Yellow
    "#6A9FCF", -- Blue
    "#A87FBF", -- Magenta
    "#6EB5A0", -- Cyan
    "#C8C8BC", -- White
  },
  brights = {
    "#606058", -- Bright Black
    "#D4817F", -- Bright Red
    "#A5D4A7", -- Bright Green
    "#D8CA7B", -- Bright Yellow
    "#94BBD9", -- Bright Blue
    "#C4A4D4", -- Bright Magenta
    "#98D0BF", -- Bright Cyan
    "#E4E4DC", -- Bright White
  },
  tab_bar = {
    background = "#161916",
    active_tab = {
      bg_color = "#111411",
      fg_color = "#7DB880",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#1C1F1C",
      fg_color = "#8A8A7E",
    },
    inactive_tab_hover = {
      bg_color = "#222522",
      fg_color = "#C8C8BC",
      italic = true,
    },
    new_tab = {
      bg_color = "#161916",
      fg_color = "#606058",
    },
    new_tab_hover = {
      bg_color = "#222522",
      fg_color = "#7DB880",
    },
  },
}

function M.apply_to_config(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes["Terminal Sage"] = M.colors
  config.color_scheme = "Terminal Sage"
end

return M
