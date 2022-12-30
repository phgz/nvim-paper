local config

local function opt(key, default)
  key = 'nvim_paper_' .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end
  return vim.g[key]
end

config = {
  highlights = opt('highlights', {}),
  color_overrides = opt('color_overrides', {}),
  transparent_mode = opt('transparent_mode', false),
}

return config
