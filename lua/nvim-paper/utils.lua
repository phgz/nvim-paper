local utils = {}

function utils.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  if vim.g.syntax_on == 1 then
    vim.cmd('syntax reset')
  end

  vim.go.termguicolors = true
  vim.g.colors_name = 'paper'
  vim.go.background = 'light'
  -- load base theme

  g.terminal_color_0 = black
  g.terminal_color_1 = red
  g.terminal_color_2 = green
  g.terminal_color_3 = yellow
  g.terminal_color_4 = blue
  g.terminal_color_5 = purple
  g.terminal_color_6 = cyan
  g.terminal_color_7 = lgrey3

  g.terminal_color_8 = dgrey
  g.terminal_color_9 = red
  g.terminal_color_10 = green
  g.terminal_color_11 = yellow
  g.terminal_color_12 = blue
  g.terminal_color_13 = purple
  g.terminal_color_14 = cyan
  g.terminal_color_15 = lgrey3

  for group, opts in pairs(theme.base) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return utils
