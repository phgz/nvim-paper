-- Name:         Grey
-- Description:  A low-contrast light theme for NeoVim
-- Author:       Yorick Peterse <yorick@yorickpeterse.com>
-- Maintainer:   Yorick Peterse <yorick@yorickpeterse.com>
-- Website:      https://gitlab.com/yorickpeterse/nvim-grey
-- License:      MPL 2.0

local o = vim.o
local g = vim.g
local api = vim.api

vim.cmd('hi clear')

if g.syntax_on == 1 then
  vim.cmd('syntax reset')
end

o.background = 'light'
g.colors_name = 'grey'

local background = '#f2eede'
local lbackground = '#f7f3e3'
local black = '#000000'
local blue = '#1e6fcc'
local green = '#216609'
local lgreen = '#dfeacc'
local red = '#cc3e28'
local grey = '#777777'
local dgrey = '#555555'
local lgrey1 = '#d8d5c7'
local lgrey2 = '#bfbcaf'
local lgrey3 = '#aaaaaa'
local yellow = '#b58900'
local lyellow = '#f2de91'
local orange = '#a55000'
local purple = '#5c21a5'
local white = '#ffffff'
local cyan = '#158c86'

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

local highlights = {
  -- This highlight group can be used when one wants to disable a highlight
  -- group using `winhl`
  Disabled = {},
  ColorColumn = { bg = lbackground },
  Comment = { fg = grey },
  Conceal = {},
  Constant = { fg = black },
  Cursor = { bg = lgrey1 },
  CursorLine = { bg = lbackground },
  CursorLineNR = { fg = black, bold = true },
  Directory = { fg = purple },
  ErrorMsg = { fg = red, bold = true },
  FoldColumn = { fg = black, bg = background },
  Identifier = { fg = black },
  Include = { fg = black, bold = true },
  Keyword = { fg = black, bold = true },
  LineNr = { fg = black },
  Macro = { fg = orange },
  MatchParen = { bold = true },
  MoreMsg = { fg = black },
  NonText = { fg = background },
  Normal = { fg = black, bg = background },
  NormalFloat = { fg = black, bg = background },
  Bold = { fg = black, bold = true },
  Number = { fg = blue },
  Operator = { fg = black },
  Pmenu = { fg = black, bg = lgrey1 },
  PmenuSel = { fg = black, bg = lgrey2, bold = true },
  PreProc = { fg = black },
  Question = { fg = black },
  Regexp = { fg = orange },
  Search = { bg = lyellow },
  IncSearch = { bg = lyellow },
  Special = { fg = black },
  SpellBad = { fg = red, bold = true, undercurl = true },
  SpellCap = { fg = purple, undercurl = true },
  SpellLocal = { fg = green, undercurl = true },
  SpellRare = { fg = purple, undercurl = true },
  StatusLine = { fg = black, bg = lgrey1 },
  StatusLineNC = { fg = black, bg = lgrey1 },
  String = { fg = green },
  TabLine = { fg = dgrey, bg = lgrey2 },
  TabLineFill = { fg = black, bg = lgrey2 },
  TabLineSel = { fg = black, bg = background, bold = true },
  Title = { fg = black, bold = true },
  Todo = { fg = grey, bold = true },
  VertSplit = { fg = lgrey2 },
  WarningMsg = { fg = orange, bold = true },
  Underlined = { underline = true },

  Boolean = { link = 'Keyword' },
  Character = { link = 'String' },
  Error = { link = 'ErrorMsg' },
  Folded = { link = 'Comment' },
  Label = { link = 'Keyword' },
  PmenuThumb = { link = 'PmenuSel' },
  PreCondit = { link = 'Macro' },
  SignColumn = { link = 'FoldColumn' },
  SpecialKey = { link = 'Number' },
  Statement = { link = 'Keyword' },
  StorageClass = { link = 'Keyword' },
  Type = { link = 'Keyword' },
  Visual = { link = 'Cursor' },
  WildMenu = { link = 'PmenuSel' },

  EndOfBuffer = { fg = background, bg = background },
  InstanceVariable = { fg = purple },
  MsgSeparator = { fg = lgrey1 },
  PmenuSbar = { bg = lgrey2 },
  QuickFixLine = { bg = lgrey3, bold = true },
  StatusLineTab = { fg = black, bg = background, bold = true },

  WinBar = { fg = black, bg = lgrey1, bold = true },
  WinBarNc = { fg = black, bold = true },
  WinBarFill = { fg = lgrey1 },

  Symbol = { fg = orange },

  -- These highlight groups can be used for statuslines, for example when
  -- displaying ALE warnings and errors.
  WhiteOnBlue = { fg = white, bg = blue },
  WhiteOnOrange = { fg = white, bg = orange },
  WhiteOnYellow = { fg = white, bg = yellow },
  WhiteOnRed = { fg = white, bg = red },
  BlackOnLightYellow = { fg = black, bg = lyellow },
  Yellow = { fg = yellow, bold = true },

  -- ALE
  ALEError = { fg = red, bold = true },
  ALEErrorSign = { fg = red, bold = true },
  ALEWarning = { fg = orange, bold = true },
  ALEWarningSign = { fg = orange, bold = true },

  -- CSS
  cssClassName = { link = 'Keyword' },
  cssColor = { link = 'Number' },
  cssIdentifier = { link = 'Keyword' },
  cssImportant = { link = 'Keyword' },
  cssProp = { link = 'Identifier' },
  cssTagName = { link = 'Keyword' },

  -- Diffs
  DiffAdd = { bg = lgreen },
  DiffChange = {},
  DiffDelete = { fg = red },
  DiffText = { bg = lgreen },
  diffFile = { fg = black, bold = true },
  diffLine = { fg = blue },
  diffAdded = { link = 'DiffAdd' },
  diffChanged = { link = 'DiffChange' },
  diffRemoved = { link = 'DiffDelete' },

  dotKeyChar = { link = 'Operator' },

  -- Fugitive
  FugitiveblameTime = { fg = blue },
  FugitiveblameHash = { fg = purple },
  gitCommitOverflow = { link = 'ErrorMsg' },
  gitCommitSummary = { link = 'String' },

  -- HAML
  hamlClass = { fg = black },
  hamlId = { fg = black },
  hamlTag = { fg = black, bold = true },
  hamlDocType = { link = 'Comment' },

  -- hop.nvim
  HopNextKey = { fg = red, bold = true },
  HopNextKey1 = { fg = yellow },
  HopNextKey2 = { fg = yellow },
  HopUnmatched = {},

  -- HTML
  htmlTag = { fg = black, bold = true },
  htmlArg = { link = 'Identifier' },
  htmlLink = { link = 'Directory' },
  htmlScriptTag = { link = 'htmlTag' },
  htmlSpecialTagName = { link = 'htmlTag' },
  htmlTagName = { link = 'htmlTag' },

  -- Inko
  inkoCommentBold = { fg = grey, bold = true },
  inkoCommentItalic = { fg = grey, italic = true },
  inkoCommentTitle = { fg = grey, bold = true },
  inkoCommentInlineUrl = { link = 'Number' },
  inkoInstanceVariable = { link = 'InstanceVariable' },
  inkoKeywordArgument = { link = 'Regexp' },

  -- Java
  javaAnnotation = { link = 'Directory' },
  javaCommentTitle = { link = 'javaComment' },
  javaDocParam = { link = 'Todo' },
  javaDocTags = { link = 'Todo' },
  javaExternal = { link = 'Keyword' },
  javaStorageClass = { link = 'Keyword' },

  -- Javascript
  JavaScriptNumber = { link = 'Number' },
  javaScriptBraces = { link = 'Operator' },
  javaScriptFunction = { link = 'Keyword' },
  javaScriptIdentifier = { link = 'Keyword' },
  javaScriptMember = { link = 'Identifier' },

  -- JSON
  jsonKeyword = { link = 'String' },

  -- Lua
  luaFunction = { link = 'Keyword' },

  -- LSP
  DiagnosticError = { fg = red, bold = true },
  DiagnosticWarn = { fg = yellow, bold = true },
  DiagnosticHint = { fg = grey, bold = true },
  DiagnosticInfo = { fg = blue, bold = true },
  DiagnosticUnderlineError = { undercurl = true, sp = red },
  DiagnosticUnderlineWarn = { undercurl = true, sp = yellow },
  DiagnosticUnderlineHint = { undercurl = true, sp = grey },
  DiagnosticUnderlineInfo = { undercurl = true, sp = blue },

  -- Make
  makeTarget = { link = 'Function' },

  -- Markdown
  markdownCode = { link = 'markdownCodeBlock' },
  markdownCodeBlock = { link = 'Comment' },
  markdownListMarker = { link = 'Keyword' },
  markdownOrderedListMarker = { link = 'Keyword' },

  -- netrw
  netrwClassify = { link = 'Identifier' },

  -- Perl
  perlPackageDecl = { link = 'Identifier' },
  perlStatementInclude = { link = 'Statement' },
  perlStatementPackage = { link = 'Statement' },
  podCmdText = { link = 'Todo' },
  podCommand = { link = 'Comment' },
  podVerbatimLine = { link = 'Todo' },

  -- Ruby
  rubyAttribute = { link = 'Identifier' },
  rubyClass = { link = 'Keyword' },
  rubyClassVariable = { link = 'rubyInstancevariable' },
  rubyConstant = { link = 'Constant' },
  rubyDefine = { link = 'Keyword' },
  rubyFunction = { link = 'Function' },
  rubyInstanceVariable = { link = 'InstanceVariable' },
  rubyMacro = { link = 'Identifier' },
  rubyModule = { link = 'rubyClass' },
  rubyRegexp = { link = 'Regexp' },
  rubyRegexpCharClass = { link = 'Regexp' },
  rubyRegexpDelimiter = { link = 'Regexp' },
  rubyRegexpQuantifier = { link = 'Regexp' },
  rubyRegexpSpecial = { link = 'Regexp' },
  rubyStringDelimiter = { link = 'String' },
  rubySymbol = { link = 'Symbol' },
  rubyTSLabel = { link = 'InstanceVariable' },

  -- Rust
  rustCommentBlockDoc = { link = 'Comment' },
  rustCommentLineDoc = { link = 'Comment' },
  rustFuncCall = { link = 'Identifier' },
  rustModPath = { link = 'Identifier' },

  -- Python
  pythonOperator = { link = 'Keyword' },

  -- SASS
  sassClass = { link = 'cssClassName' },
  sassId = { link = 'cssIdentifier' },

  -- Shell
  shFunctionKey = { link = 'Keyword' },

  -- SQL
  sqlKeyword = { link = 'Keyword' },

  -- Typescript
  typescriptBraces = { link = 'Operator' },
  typescriptEndColons = { link = 'Operator' },
  typescriptExceptions = { link = 'Keyword' },
  typescriptFuncKeyword = { link = 'Keyword' },
  typescriptFunction = { link = 'Function' },
  typescriptIdentifier = { link = 'Identifier' },
  typescriptLogicSymbols = { link = 'Operator' },

  -- TOML
  -- tomlTSTypeBuiltin is used for section titles (e.g. `[dependencies]`), while
  -- tomlTSProperty is used for key-value pairs. These rules ensure the syntax
  -- is consistent with https://github.com/cespare/vim-toml.
  tomlTSProperty = { fg = black },
  tomlTSTypeBuiltin = { fg = black, bold = true },

  -- Vimscript
  VimCommentTitle = { link = 'Todo' },
  VimIsCommand = { link = 'Constant' },
  vimGroup = { link = 'Constant' },
  vimHiGroup = { link = 'Constant' },

  -- XML
  xmlAttrib = { link = 'Identifier' },
  xmlTag = { link = 'Identifier' },
  xmlTagName = { link = 'Identifier' },

  -- YAML
  yamlPlainScalar = { link = 'String' },

  -- YARD
  yardComment = { link = 'Comment' },
  yardType = { link = 'Todo' },
  yardTypeList = { link = 'Todo' },

  -- dressing.nvim
  FloatTitle = { fg = black, bold = true },
  FloatBorder = { fg = grey },

  -- diffview.nvim
  DiffviewCursorLine = {},
  DiffviewDiffAddAsDelete = { bg = red },
  DiffviewDiffDelete = { fg = lgrey3 },
  DiffviewFilePanelFileName = { fg = black },
  DiffviewFilePanelPath = { fg = purple },
  DiffviewFilePanelRootPath = { fg = purple },
  DiffviewFilePanelTitle = { fg = black, bold = true },
  DiffviewStatusModified = { fg = yellow, bold = true },
  DiffviewStatusAdded = { fg = green, bold = true },
  DiffviewStatusCopied = { fg = green, bold = true },
  DiffviewStatusDeleted = { fg = red, bold = true },

  -- pounce.nvim
  PounceAccept = { fg = red, bold = true },
  PounceAcceptBest = { fg = red, bold = true },
  PounceMatch = { bg = lyellow },
  PounceUnmatched = {},
  PounceGap = { link = 'None' },

  -- Telescope
  TelescopeBorder = { fg = grey },
  TelescopeMatching = { fg = yellow, bold = true },
  TelescopePromptPrefix = { fg = black, bold = true },
  TelescopeSelection = { bg = lgrey1, bold = true },
  TelescopeTitle = { fg = black, bold = true },

  -- Treesitter
  TSEmphasis = { italic = true },
  TSField = {},
  TSStringEscape = { fg = green, bold = true },
  TSStrong = { bold = true },
  TSURI = { fg = cyan, underline = true },
  TSUnderline = { underline = true },

  TSConstMacro = { link = 'Macro' },
  TSDanger = { link = 'Todo' },
  TSKeywordOperator = { link = 'Keyword' },
  TSNamespace = { link = 'Constant' },
  TSNote = { link = 'Todo' },
  TSProperty = { link = 'TSField' },
  TSStringRegex = { link = 'Regexp' },
  TSSymbol = { link = 'Symbol' },
  TSTypeBuiltin = { link = 'Keyword' },
  TSWarning = { link = 'Todo' },
}

for group, opts in pairs(highlights) do
  api.nvim_set_hl(0, group, opts)
end
