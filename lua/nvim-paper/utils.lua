local g = vim.g

local utils = {}

function utils.terminal(colors)
  g.terminal_color_0 = colors.black
  g.terminal_color_1 = colors.red
  g.terminal_color_2 = colors.green
  g.terminal_color_3 = colors.yellow
  g.terminal_color_4 = colors.blue
  g.terminal_color_5 = colors.purple
  g.terminal_color_6 = colors.cyan
  g.terminal_color_7 = colors.lgrey3

  g.terminal_color_8 = colors.dgrey
  g.terminal_color_9 = colors.red
  g.terminal_color_10 = colors.green
  g.terminal_color_11 = colors.yellow
  g.terminal_color_12 = colors.blue
  g.terminal_color_13 = colors.purple
  g.terminal_color_14 = colors.cyan
  g.terminal_color_15 = colors.lgrey3
end

function utils.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  if vim.g.syntax_on == 1 then
    vim.cmd('syntax reset')
  end

  vim.go.termguicolors = true
  vim.go.background = 'light'

  g.colors_name = 'paper'
  utils.terminal(theme.colors)
  -- load base theme
  for group, opts in pairs(theme.base) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return utils
