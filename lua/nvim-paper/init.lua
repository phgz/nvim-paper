local utils = require('nvim-paper.utils')
local theme = require('nvim-paper.theme')

local M = {}

function M.colorscheme()
  utils.load(theme.setup())
end

return M
