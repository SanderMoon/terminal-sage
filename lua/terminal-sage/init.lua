local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "terminal-sage"

  local c = require("terminal-sage.palette")
  local groups = require("terminal-sage.groups").get(c)

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end

  -- Terminal colors (matching WezTerm ANSI palette)
  vim.g.terminal_color_0 = c.surface
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.purple
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg_dim
  vim.g.terminal_color_8 = c.fg_dark
  vim.g.terminal_color_9 = c.br_red
  vim.g.terminal_color_10 = c.br_green
  vim.g.terminal_color_11 = c.br_yellow
  vim.g.terminal_color_12 = c.br_blue
  vim.g.terminal_color_13 = c.br_purple
  vim.g.terminal_color_14 = c.br_cyan
  vim.g.terminal_color_15 = c.fg
end

return M
