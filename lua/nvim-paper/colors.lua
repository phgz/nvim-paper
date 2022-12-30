-- Name:         Paper
-- Description:  A low-contrast light theme for NeoVim
-- Author:       Yorick Peterse <yorick@yorickpeterse.com>
-- Website:      https://gitlab.com/yorickpeterse
-- License:      MPL 2.0

local M = {}

local colors = {
  background = '#f2eede',
  lbackground = '#f7f3e3',
  black = '#000000',
  blue = '#1e6fcc',
  green = '#216609',
  lgreen = '#dfeacc',
  red = '#cc3e28',
  grey = '#777777',
  dgrey = '#555555',
  lgrey1 = '#d8d5c7',
  lgrey2 = '#bfbcaf',
  lgrey3 = '#aaaaaa',
  yellow = '#b58900',
  lyellow = '#f2de91',
  orange = '#a55000',
  purple = '#5c21a5',
  white = '#ffffff',
  cyan = '#158c86',
  none = 'NONE',
}

function M.config(config)
  config = config or require('nvim-paper.config')

  if config.transparent_mode then
    local transparent = {
      background = colors.none,
      lbackground = colors.none,
    }
    colors = vim.tbl_extend('force', colors, transparent)
  end

  if config.color_overrides then
    for override_color, new_color in pairs(config.color_overrides) do
      colors[override_color] = new_color
    end
  end
  return colors
end

return M
