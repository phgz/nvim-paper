-- Name:         Paper
-- Description:  A low-contrast light theme for NeoVim
-- Author:       Yorick Peterse <yorick@yorickpeterse.com>
-- Website:      https://gitlab.com/yorickpeterse
-- License:      MPL 2.0

local M = {}

function M.setup(config)
  local theme = {}

  config = config or require('nvim-paper.config')
  theme.colors = require('nvim-paper.colors').config(config)
  local c = theme.colors

  theme.base = {
    -- This highlight group can be used when one wants to disable a highlight
    -- group using `winhl`
    Disabled = {},
    ColorColumn = { bg = c.lbackground },
    Comment = { fg = c.grey },
    Conceal = {},
    Constant = { fg = c.black },
    Cursor = { bg = c.lgrey1 },
    CursorLine = { bg = c.lbackground },
    CursorLineNR = { fg = c.black, bold = true },
    Directory = { fg = c.purple },
    ErrorMsg = { fg = c.red, bold = true },
    FoldColumn = { fg = c.black, bg = c.background },
    Identifier = { fg = c.black },
    Include = { fg = c.black, bold = true },
    Keyword = { fg = c.black, bold = true },
    LineNr = { fg = c.black },
    Macro = { fg = c.orange },
    MatchParen = { bold = true },
    MoreMsg = { fg = c.black },
    NonText = { fg = c.background },
    Normal = { fg = c.black, bg = c.background },
    NormalFloat = { fg = c.black, bg = c.background },
    Bold = { fg = c.black, bold = true },
    Number = { fg = c.blue },
    Operator = { fg = c.black },
    Pmenu = { fg = c.black, bg = c.lgrey1 },
    PmenuSel = { fg = c.black, bg = c.lgrey2, bold = true },
    PreProc = { fg = c.black },
    Question = { fg = c.black },
    Regexp = { fg = c.orange },
    Search = { bg = c.lyellow },
    IncSearch = { bg = c.lyellow },
    Special = { fg = c.black },
    SpellBad = { fg = c.red, bold = true, undercurl = true },
    SpellCap = { fg = c.purple, undercurl = true },
    SpellLocal = { fg = c.green, undercurl = true },
    SpellRare = { fg = c.purple, undercurl = true },
    StatusLine = { fg = c.black, bg = c.lgrey1 },
    StatusLineNC = { fg = c.black, bg = c.lgrey1 },
    String = { fg = c.green },
    TabLine = { fg = c.dgrey, bg = c.lgrey2 },
    TabLineFill = { fg = c.black, bg = c.lgrey2 },
    TabLineSel = { fg = c.black, bg = c.background, bold = true },
    Title = { fg = c.black, bold = true },
    Todo = { fg = c.grey, bold = true },
    VertSplit = { fg = c.lgrey2 },
    WarningMsg = { fg = c.orange, bold = true },
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

    EndOfBuffer = { fg = c.background, bg = c.background },
    InstanceVariable = { fg = c.purple },
    MsgSeparator = { fg = c.lgrey1 },
    PmenuSbar = { bg = c.lgrey2 },
    QuickFixLine = { bg = c.lgrey3, bold = true },
    StatusLineTab = { fg = c.black, bg = c.background, bold = true },

    WinBar = { fg = c.black, bg = c.lgrey1, bold = true },
    WinBarNc = { fg = c.black, bold = true },
    WinBarFill = { fg = c.lgrey1 },

    Symbol = { fg = c.orange },

    -- These highlight groups can be used for statuslines, for example when
    -- displaying ALE warnings and errors.
    WhiteOnBlue = { fg = c.white, bg = c.blue },
    WhiteOnOrange = { fg = c.white, bg = c.orange },
    WhiteOnYellow = { fg = c.white, bg = c.yellow },
    WhiteOnRed = { fg = c.white, bg = c.red },
    BlackOnLightYellow = { fg = c.black, bg = c.lyellow },
    Yellow = { fg = c.yellow, bold = true },

    -- ALE
    ALEError = { fg = c.red, bold = true },
    ALEErrorSign = { fg = c.red, bold = true },
    ALEWarning = { fg = c.orange, bold = true },
    ALEWarningSign = { fg = c.orange, bold = true },

    -- CSS
    cssClassName = { link = 'Keyword' },
    cssColor = { link = 'Number' },
    cssIdentifier = { link = 'Keyword' },
    cssImportant = { link = 'Keyword' },
    cssProp = { link = 'Identifier' },
    cssTagName = { link = 'Keyword' },

    -- Diffs
    DiffAdd = { bg = c.lgreen },
    DiffChange = {},
    DiffDelete = { fg = c.red },
    DiffText = { bg = c.lgreen },
    diffFile = { fg = c.black, bold = true },
    diffLine = { fg = c.blue },
    diffAdded = { link = 'DiffAdd' },
    diffChanged = { link = 'DiffChange' },
    diffRemoved = { link = 'DiffDelete' },

    dotKeyChar = { link = 'Operator' },

    -- Fugitive
    FugitiveblameTime = { fg = c.blue },
    FugitiveblameHash = { fg = c.purple },
    gitCommitOverflow = { link = 'ErrorMsg' },
    gitCommitSummary = { link = 'String' },

    -- HAML
    hamlClass = { fg = c.black },
    hamlId = { fg = c.black },
    hamlTag = { fg = c.black, bold = true },
    hamlDocType = { link = 'Comment' },

    -- hop.nvim
    HopNextKey = { fg = c.red, bold = true },
    HopNextKey1 = { fg = c.yellow },
    HopNextKey2 = { fg = c.yellow },
    HopUnmatched = {},

    -- HTML
    htmlTag = { fg = c.black, bold = true },
    htmlArg = { link = 'Identifier' },
    htmlLink = { link = 'Directory' },
    htmlScriptTag = { link = 'htmlTag' },
    htmlSpecialTagName = { link = 'htmlTag' },
    htmlTagName = { link = 'htmlTag' },

    -- Inko
    inkoCommentBold = { fg = c.grey, bold = true },
    inkoCommentItalic = { fg = c.grey, italic = true },
    inkoCommentTitle = { fg = c.grey, bold = true },
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
    DiagnosticError = { fg = c.red, bold = true },
    DiagnosticWarn = { fg = c.yellow, bold = true },
    DiagnosticHint = { fg = c.grey, bold = true },
    DiagnosticInfo = { fg = c.blue, bold = true },
    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.grey },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },

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
    tomlTSProperty = { fg = c.black },
    tomlTSTypeBuiltin = { fg = c.black, bold = true },

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
    FloatTitle = { fg = c.black, bold = true },
    FloatBorder = { fg = c.grey },

    -- diffview.nvim
    DiffviewCursorLine = {},
    DiffviewDiffAddAsDelete = { bg = c.red },
    DiffviewDiffDelete = { fg = c.lgrey3 },
    DiffviewFilePanelFileName = { fg = c.black },
    DiffviewFilePanelPath = { fg = c.purple },
    DiffviewFilePanelRootPath = { fg = c.purple },
    DiffviewFilePanelTitle = { fg = c.black, bold = true },
    DiffviewStatusModified = { fg = c.yellow, bold = true },
    DiffviewStatusAdded = { fg = c.green, bold = true },
    DiffviewStatusCopied = { fg = c.green, bold = true },
    DiffviewStatusDeleted = { fg = c.red, bold = true },

    -- pounce.nvim
    PounceAccept = { fg = c.red, bold = true },
    PounceAcceptBest = { fg = c.red, bold = true },
    PounceMatch = { bg = c.lyellow },
    PounceUnmatched = {},
    PounceGap = { link = 'None' },

    -- Telescope
    TelescopeBorder = { fg = c.grey },
    TelescopeMatching = { fg = c.yellow, bold = true },
    TelescopePromptPrefix = { fg = c.black, bold = true },
    TelescopeSelection = { bg = c.lgrey1, bold = true },
    TelescopeTitle = { fg = c.black, bold = true },

    -- Treesitter
    TSEmphasis = { italic = true },
    TSField = {},
    TSStringEscape = { fg = c.green, bold = true },
    TSStrong = { bold = true },
    TSURI = { fg = c.cyan, underline = true },
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

  if config.transparent_mode then
    theme.base = vim.tbl_extend('force', theme.base, {
      Visual = { bg = c.medium_gray },
      MultiCursor = { bg = c.medium_gray },
      Cursor = { bg = c.soft_green, c.dark },
      SignColumn = { bg = c.none },
    })
  end
  theme.base = vim.tbl_extend(
    'force',
    theme.base,
    config.highlights and config.highlights(c) or {}
  )
  return theme
end

return M
