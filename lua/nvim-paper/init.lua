local util = require('nvim-paper.util')
local theme = require('nvim-paper.theme')

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
