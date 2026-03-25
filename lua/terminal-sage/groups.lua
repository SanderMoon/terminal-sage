local M = {}

function M.get(c)
  -- Subtle blended backgrounds for virtual text diagnostics
  local diag_bg_error = "#1E1617"
  local diag_bg_warn = "#1E1C14"
  local diag_bg_info = "#141A1E"
  local diag_bg_hint = "#141E1B"

  return {
    -- ========================================================================
    -- Base editor
    -- ========================================================================
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_alt },
    NormalNC = { fg = c.fg, bg = c.bg },
    Cursor = { fg = c.bg, bg = c.green },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorLine = { bg = c.bg_code },
    CursorColumn = { bg = c.bg_code },
    CursorLineNr = { fg = c.fg, bold = true },
    LineNr = { fg = c.fg_dark },
    LineNrAbove = { fg = c.fg_dark },
    LineNrBelow = { fg = c.fg_dark },
    SignColumn = { fg = c.fg_dark, bg = c.bg },
    FoldColumn = { fg = c.fg_dark, bg = c.bg },
    Folded = { fg = c.fg_muted, bg = c.bg_alt },
    ColorColumn = { bg = c.bg_code },

    -- Selection & Search
    Visual = { bg = "#3A3E3A" },
    VisualNOS = { bg = "#3A3E3A" },
    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.yellow },
    CurSearch = { fg = c.bg, bg = c.yellow, bold = true },
    Substitute = { fg = c.bg, bg = c.red },

    -- Popup menu
    Pmenu = { fg = c.fg_dim, bg = c.surface },
    PmenuSel = { fg = c.fg, bg = c.card_hover },
    PmenuSbar = { bg = c.surface },
    PmenuThumb = { bg = c.divider },
    PmenuKind = { fg = c.purple, bg = c.surface },
    PmenuKindSel = { fg = c.purple, bg = c.card_hover },
    PmenuExtra = { fg = c.fg_muted, bg = c.surface },
    PmenuExtraSel = { fg = c.fg_muted, bg = c.card_hover },

    -- Statusline & Tabline
    StatusLine = { fg = c.fg_dim, bg = c.bg_alt },
    StatusLineNC = { fg = c.fg_dark, bg = c.bg_alt },
    WinBar = { fg = c.fg_dim, bg = c.bg },
    WinBarNC = { fg = c.fg_dark, bg = c.bg },
    TabLine = { fg = c.fg_muted, bg = c.bg_alt },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.green, bg = c.bg, bold = true },

    -- Window chrome
    WinSeparator = { fg = c.divider },
    VertSplit = { fg = c.divider },
    FloatBorder = { fg = c.divider, bg = c.bg_alt },
    FloatTitle = { fg = c.green, bg = c.bg_alt, bold = true },

    -- Diff
    DiffAdd = { bg = "#254D28" },
    DiffChange = { bg = "#3A3618" },
    DiffDelete = { bg = "#4D2020" },
    DiffText = { bg = "#4A4820" },

    -- Messages
    ErrorMsg = { fg = c.red },
    WarningMsg = { fg = c.yellow },
    ModeMsg = { fg = c.fg_dim, bold = true },
    MoreMsg = { fg = c.green },
    Question = { fg = c.green },
    Title = { fg = c.blue, bold = true },

    -- Misc UI
    Directory = { fg = c.blue },
    SpecialKey = { fg = c.fg_dark },
    NonText = { fg = c.fg_dark },
    EndOfBuffer = { fg = c.bg },
    Conceal = { fg = c.fg_dark },
    MatchParen = { fg = c.yellow, bold = true },
    WildMenu = { fg = c.bg, bg = c.green },
    Whitespace = { fg = c.divider },
    QuickFixLine = { bg = c.bg_code, bold = true },
    qfFileName = { fg = c.blue },
    qfLineNr = { fg = c.yellow },

    -- Spell
    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.yellow },
    SpellLocal = { undercurl = true, sp = c.cyan },
    SpellRare = { undercurl = true, sp = c.purple },

    -- ========================================================================
    -- Vim syntax (traditional highlight groups)
    -- ========================================================================
    Comment = { fg = c.fg_muted, italic = true },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.yellow },
    Boolean = { fg = c.yellow },
    Float = { fg = c.yellow },

    Identifier = { fg = c.fg },
    Function = { fg = c.blue },

    Statement = { fg = c.purple },
    Conditional = { fg = c.purple },
    Repeat = { fg = c.purple },
    Label = { fg = c.purple },
    Keyword = { fg = c.purple },
    Exception = { fg = c.purple },
    Operator = { fg = c.fg_dim },

    PreProc = { fg = c.purple },
    Include = { fg = c.purple },
    Define = { fg = c.purple },
    Macro = { fg = c.purple },
    PreCondit = { fg = c.purple },

    Type = { fg = c.cyan },
    StorageClass = { fg = c.purple },
    Structure = { fg = c.cyan },
    Typedef = { fg = c.cyan },

    Special = { fg = c.blue },
    SpecialChar = { fg = c.cyan },
    Tag = { fg = c.blue },
    Delimiter = { fg = c.fg_dim },
    SpecialComment = { fg = c.fg_muted, bold = true },
    Debug = { fg = c.red },

    Underlined = { fg = c.blue, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Error = { fg = c.red },
    Todo = { fg = c.yellow, bold = true },

    -- ========================================================================
    -- Treesitter
    -- ========================================================================
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.purple },
    ["@variable.parameter"] = { fg = c.br_blue },
    ["@variable.parameter.builtin"] = { fg = c.br_blue },
    ["@variable.member"] = { fg = c.fg },

    ["@constant"] = { fg = c.yellow },
    ["@constant.builtin"] = { fg = c.yellow, bold = true },
    ["@constant.macro"] = { fg = c.yellow },

    ["@module"] = { fg = c.cyan },
    ["@module.builtin"] = { fg = c.cyan },
    ["@label"] = { fg = c.purple },

    ["@string"] = { fg = c.green },
    ["@string.documentation"] = { fg = c.green },
    ["@string.escape"] = { fg = c.cyan },
    ["@string.special"] = { fg = c.cyan },
    ["@string.special.symbol"] = { fg = c.yellow },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    ["@string.regexp"] = { fg = c.br_red },

    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.cyan },
    ["@boolean"] = { fg = c.yellow },
    ["@number"] = { fg = c.yellow },
    ["@number.float"] = { fg = c.yellow },

    ["@type"] = { fg = c.cyan },
    ["@type.builtin"] = { fg = c.cyan, italic = true },
    ["@type.definition"] = { fg = c.cyan },
    ["@type.qualifier"] = { fg = c.purple },

    ["@attribute"] = { fg = c.yellow },
    ["@attribute.builtin"] = { fg = c.yellow },
    ["@property"] = { fg = c.fg },

    ["@function"] = { fg = c.blue },
    ["@function.builtin"] = { fg = c.blue },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.blue },
    ["@function.method"] = { fg = c.blue },
    ["@function.method.call"] = { fg = c.blue },

    ["@constructor"] = { fg = c.cyan },

    ["@operator"] = { fg = c.fg_dim },

    ["@keyword"] = { fg = c.purple },
    ["@keyword.coroutine"] = { fg = c.purple },
    ["@keyword.function"] = { fg = c.purple },
    ["@keyword.operator"] = { fg = c.purple },
    ["@keyword.import"] = { fg = c.purple },
    ["@keyword.type"] = { fg = c.purple },
    ["@keyword.modifier"] = { fg = c.purple },
    ["@keyword.repeat"] = { fg = c.purple },
    ["@keyword.return"] = { fg = c.purple },
    ["@keyword.debug"] = { fg = c.red },
    ["@keyword.exception"] = { fg = c.purple },
    ["@keyword.conditional"] = { fg = c.purple },
    ["@keyword.conditional.ternary"] = { fg = c.purple },
    ["@keyword.directive"] = { fg = c.purple },
    ["@keyword.directive.define"] = { fg = c.purple },

    ["@punctuation.bracket"] = { fg = c.fg_dim },
    ["@punctuation.delimiter"] = { fg = c.fg_dim },
    ["@punctuation.special"] = { fg = c.fg_dim },

    ["@comment"] = { fg = c.fg_muted, italic = true },
    ["@comment.documentation"] = { fg = c.fg_muted, italic = true },
    ["@comment.error"] = { fg = c.red, bold = true },
    ["@comment.warning"] = { fg = c.yellow, bold = true },
    ["@comment.todo"] = { fg = c.yellow, bold = true },
    ["@comment.note"] = { fg = c.cyan, bold = true },

    ["@tag"] = { fg = c.blue },
    ["@tag.builtin"] = { fg = c.blue },
    ["@tag.attribute"] = { fg = c.cyan },
    ["@tag.delimiter"] = { fg = c.fg_dim },

    ["@markup.heading"] = { fg = c.blue, bold = true },
    ["@markup.heading.1"] = { fg = c.blue, bold = true },
    ["@markup.heading.2"] = { fg = c.green, bold = true },
    ["@markup.heading.3"] = { fg = c.cyan, bold = true },
    ["@markup.heading.4"] = { fg = c.yellow, bold = true },
    ["@markup.heading.5"] = { fg = c.purple, bold = true },
    ["@markup.heading.6"] = { fg = c.br_red, bold = true },
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.link"] = { fg = c.cyan },
    ["@markup.link.label"] = { fg = c.cyan, underline = true },
    ["@markup.link.url"] = { fg = c.blue, underline = true },
    ["@markup.raw"] = { fg = c.green },
    ["@markup.raw.block"] = { fg = c.fg_dim },
    ["@markup.list"] = { fg = c.fg_dim },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.fg_dark },
    ["@markup.math"] = { fg = c.blue },
    ["@markup.environment"] = { fg = c.purple },

    ["@diff.plus"] = { fg = c.green },
    ["@diff.minus"] = { fg = c.red },
    ["@diff.delta"] = { fg = c.yellow },

    -- ========================================================================
    -- LSP semantic tokens
    -- ========================================================================
    ["@lsp.type.class"] = { fg = c.cyan },
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { fg = c.yellow },
    ["@lsp.type.enum"] = { fg = c.cyan },
    ["@lsp.type.enumMember"] = { fg = c.yellow },
    ["@lsp.type.function"] = { fg = c.blue },
    ["@lsp.type.interface"] = { fg = c.br_cyan },
    ["@lsp.type.keyword"] = { fg = c.purple },
    ["@lsp.type.macro"] = { fg = c.blue },
    ["@lsp.type.method"] = { fg = c.blue },
    ["@lsp.type.namespace"] = { fg = c.cyan },
    ["@lsp.type.parameter"] = { fg = c.br_blue },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { fg = c.cyan },
    ["@lsp.type.type"] = { fg = c.cyan },
    ["@lsp.type.typeParameter"] = { fg = c.cyan },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.typemod.function.declaration"] = { fg = c.blue, bold = true },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.blue },
    ["@lsp.typemod.variable.readonly"] = { fg = c.yellow },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.purple },
    ["@lsp.typemod.class.defaultLibrary"] = { fg = c.cyan },

    -- ========================================================================
    -- Diagnostics
    -- ========================================================================
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.cyan },
    DiagnosticOk = { fg = c.green },

    DiagnosticVirtualTextError = { fg = c.red, bg = diag_bg_error },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = diag_bg_warn },
    DiagnosticVirtualTextInfo = { fg = c.blue, bg = diag_bg_info },
    DiagnosticVirtualTextHint = { fg = c.cyan, bg = diag_bg_hint },

    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.cyan },

    DiagnosticSignError = { fg = c.red },
    DiagnosticSignWarn = { fg = c.yellow },
    DiagnosticSignInfo = { fg = c.blue },
    DiagnosticSignHint = { fg = c.cyan },

    -- ========================================================================
    -- LSP
    -- ========================================================================
    LspReferenceText = { bg = c.card_hover },
    LspReferenceRead = { bg = c.card_hover },
    LspReferenceWrite = { bg = c.card_hover },
    LspSignatureActiveParameter = { fg = c.green, bold = true },
    LspCodeLens = { fg = c.fg_dark },
    LspInlayHint = { fg = c.fg_dark, bg = c.bg_code },

    -- ========================================================================
    -- Git signs
    -- ========================================================================
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },
    GitSignsCurrentLineBlame = { fg = c.fg_dark },
    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.yellow },
    GitSignsDeleteNr = { fg = c.red },
    GitSignsAddLn = { bg = "#254D28" },
    GitSignsChangeLn = { bg = "#3A3618" },
    GitSignsDeleteLn = { bg = "#4D2020" },

    -- ========================================================================
    -- Neo-tree
    -- ========================================================================
    NeoTreeNormal = { fg = c.fg_dim, bg = c.bg_dark },
    NeoTreeNormalNC = { fg = c.fg_dim, bg = c.bg_dark },
    NeoTreeDirectoryName = { fg = c.blue },
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeRootName = { fg = c.green, bold = true },
    NeoTreeFileName = { fg = c.fg_dim },
    NeoTreeFileIcon = { fg = c.fg_muted },
    NeoTreeGitModified = { fg = c.yellow },
    NeoTreeGitAdded = { fg = c.green },
    NeoTreeGitDeleted = { fg = c.red },
    NeoTreeGitConflict = { fg = c.red, bold = true },
    NeoTreeGitUntracked = { fg = c.fg_muted },
    NeoTreeGitStaged = { fg = c.green },
    NeoTreeIndentMarker = { fg = c.divider },
    NeoTreeExpander = { fg = c.fg_dark },
    NeoTreeWinSeparator = { fg = c.bg_dark, bg = c.bg_dark },
    NeoTreeCursorLine = { bg = c.bg_alt },
    NeoTreeDimText = { fg = c.fg_dark },
    NeoTreeDotfile = { fg = c.fg_dark },
    NeoTreeFloatBorder = { fg = c.divider, bg = c.bg_dark },
    NeoTreeFloatTitle = { fg = c.green, bg = c.bg_dark, bold = true },

    -- ========================================================================
    -- Telescope
    -- ========================================================================
    TelescopeNormal = { fg = c.fg_dim, bg = c.bg_alt },
    TelescopeBorder = { fg = c.divider, bg = c.bg_alt },
    TelescopePromptNormal = { fg = c.fg, bg = c.surface },
    TelescopePromptBorder = { fg = c.divider, bg = c.surface },
    TelescopePromptTitle = { fg = c.green, bg = c.surface, bold = true },
    TelescopePromptPrefix = { fg = c.green },
    TelescopeResultsTitle = { fg = c.fg_muted, bg = c.bg_alt },
    TelescopePreviewTitle = { fg = c.fg_muted, bg = c.bg_alt },
    TelescopeSelection = { bg = c.card_hover },
    TelescopeSelectionCaret = { fg = c.green, bg = c.card_hover },
    TelescopeMatching = { fg = c.green, bold = true },
    TelescopeMultiSelection = { fg = c.purple },

    -- ========================================================================
    -- Snacks
    -- ========================================================================
    SnacksPickerNormal = { fg = c.fg_dim, bg = c.bg_alt },
    SnacksPickerBorder = { fg = c.divider, bg = c.bg_alt },
    SnacksPickerMatch = { fg = c.green, bold = true },
    SnacksPickerSelected = { bg = c.card_hover },
    SnacksPickerDir = { fg = c.fg_muted },
    SnacksPickerTitle = { fg = c.green, bold = true },
    SnacksPickerPrompt = { fg = c.green },
    SnacksDashboardHeader = { fg = c.green },
    SnacksDashboardIcon = { fg = c.blue },
    SnacksDashboardKey = { fg = c.yellow },
    SnacksDashboardDesc = { fg = c.fg_dim },
    SnacksDashboardTitle = { fg = c.green, bold = true },
    SnacksDashboardFooter = { fg = c.fg_muted },
    SnacksNotifierInfo = { fg = c.blue },
    SnacksNotifierWarn = { fg = c.yellow },
    SnacksNotifierError = { fg = c.red },
    SnacksIndent = { fg = c.divider },
    SnacksIndentScope = { fg = c.green },

    -- ========================================================================
    -- nvim-cmp
    -- ========================================================================
    CmpItemAbbr = { fg = c.fg_dim },
    CmpItemAbbrDeprecated = { fg = c.fg_dark, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.green, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.green, bold = true },
    CmpItemMenu = { fg = c.fg_muted },
    CmpItemKindDefault = { fg = c.fg_muted },
    CmpItemKindText = { fg = c.fg_dim },
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindFunction = { fg = c.blue },
    CmpItemKindMethod = { fg = c.blue },
    CmpItemKindConstructor = { fg = c.cyan },
    CmpItemKindClass = { fg = c.cyan },
    CmpItemKindInterface = { fg = c.br_cyan },
    CmpItemKindStruct = { fg = c.cyan },
    CmpItemKindModule = { fg = c.cyan },
    CmpItemKindProperty = { fg = c.fg },
    CmpItemKindField = { fg = c.fg },
    CmpItemKindEnum = { fg = c.cyan },
    CmpItemKindEnumMember = { fg = c.yellow },
    CmpItemKindConstant = { fg = c.yellow },
    CmpItemKindKeyword = { fg = c.purple },
    CmpItemKindSnippet = { fg = c.green },
    CmpItemKindValue = { fg = c.yellow },
    CmpItemKindUnit = { fg = c.yellow },
    CmpItemKindFile = { fg = c.blue },
    CmpItemKindFolder = { fg = c.blue },
    CmpItemKindColor = { fg = c.br_red },
    CmpItemKindOperator = { fg = c.fg_dim },
    CmpItemKindTypeParameter = { fg = c.cyan },
    CmpItemKindCopilot = { fg = c.green },

    -- ========================================================================
    -- Which-key
    -- ========================================================================
    WhichKey = { fg = c.green },
    WhichKeyGroup = { fg = c.purple },
    WhichKeyDesc = { fg = c.fg_dim },
    WhichKeySeparator = { fg = c.fg_dark },
    WhichKeyFloat = { bg = c.bg_alt },
    WhichKeyBorder = { fg = c.divider, bg = c.bg_alt },
    WhichKeyValue = { fg = c.fg_muted },

    -- ========================================================================
    -- Noice
    -- ========================================================================
    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_alt },
    NoiceCmdlinePopupBorder = { fg = c.divider, bg = c.bg_alt },
    NoiceCmdlineIcon = { fg = c.green },
    NoiceConfirm = { fg = c.fg, bg = c.bg_alt },
    NoiceConfirmBorder = { fg = c.divider, bg = c.bg_alt },
    NoiceMini = { fg = c.fg_dim, bg = c.bg_alt },
    NoiceFormatProgressDone = { fg = c.bg, bg = c.green },
    NoiceFormatProgressTodo = { fg = c.fg_dark, bg = c.bg_alt },

    -- ========================================================================
    -- Indent guides
    -- ========================================================================
    IblIndent = { fg = c.divider },
    IblWhitespace = { fg = c.divider },
    IblScope = { fg = c.green },
    MiniIndentscopeSymbol = { fg = c.green },

    -- ========================================================================
    -- Lazy.nvim
    -- ========================================================================
    LazyNormal = { fg = c.fg, bg = c.bg_alt },
    LazyButton = { fg = c.fg_dim, bg = c.surface },
    LazyButtonActive = { fg = c.bg, bg = c.green, bold = true },
    LazyH1 = { fg = c.bg, bg = c.green, bold = true },
    LazyH2 = { fg = c.green, bold = true },
    LazySpecial = { fg = c.green },
    LazyComment = { fg = c.fg_muted },
    LazyProgressDone = { fg = c.green },
    LazyProgressTodo = { fg = c.fg_dark },

    -- ========================================================================
    -- Render-markdown
    -- ========================================================================
    RenderMarkdownH1 = { fg = c.blue, bold = true },
    RenderMarkdownH1Bg = { bg = "#141A1E" },
    RenderMarkdownH2 = { fg = c.green, bold = true },
    RenderMarkdownH2Bg = { bg = "#141E16" },
    RenderMarkdownH3 = { fg = c.cyan, bold = true },
    RenderMarkdownH3Bg = { bg = "#141E1B" },
    RenderMarkdownH4 = { fg = c.yellow, bold = true },
    RenderMarkdownH4Bg = { bg = "#1E1C14" },
    RenderMarkdownH5 = { fg = c.purple, bold = true },
    RenderMarkdownH5Bg = { bg = "#1C141E" },
    RenderMarkdownH6 = { fg = c.br_red, bold = true },
    RenderMarkdownH6Bg = { bg = "#1E1416" },
    RenderMarkdownCode = { bg = c.bg_code },
    RenderMarkdownCodeInline = { fg = c.green },
    RenderMarkdownBullet = { fg = c.fg_muted },
    RenderMarkdownQuote = { fg = c.fg_muted, italic = true },
    RenderMarkdownLink = { fg = c.cyan, underline = true },
    RenderMarkdownChecked = { fg = c.green },
    RenderMarkdownUnchecked = { fg = c.fg_dark },

    -- ========================================================================
    -- Mini
    -- ========================================================================
    MiniStatuslineDevinfo = { fg = c.fg_dim, bg = c.surface },
    MiniStatuslineFileinfo = { fg = c.fg_dim, bg = c.surface },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg_alt },
    MiniStatuslineInactive = { fg = c.fg_dark, bg = c.bg_alt },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.green, bold = true },
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.blue, bold = true },
    MiniStatuslineModeOther = { fg = c.bg, bg = c.cyan, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.red, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.purple, bold = true },

    -- ========================================================================
    -- Misc plugins
    -- ========================================================================
    -- flash.nvim
    FlashLabel = { fg = c.bg, bg = c.green, bold = true },
    FlashMatch = { fg = c.fg_dim, bg = c.card_hover },
    FlashCurrent = { fg = c.fg, bg = c.card_hover },

    -- trouble.nvim
    TroubleNormal = { fg = c.fg_dim, bg = c.bg_alt },
    TroubleText = { fg = c.fg_dim },
    TroubleCount = { fg = c.purple, bg = c.surface },

    -- nvim-notify
    NotifyERRORBorder = { fg = c.red },
    NotifyERRORIcon = { fg = c.red },
    NotifyERRORTitle = { fg = c.red },
    NotifyWARNBorder = { fg = c.yellow },
    NotifyWARNIcon = { fg = c.yellow },
    NotifyWARNTitle = { fg = c.yellow },
    NotifyINFOBorder = { fg = c.blue },
    NotifyINFOIcon = { fg = c.blue },
    NotifyINFOTitle = { fg = c.blue },
    NotifyDEBUGBorder = { fg = c.fg_muted },
    NotifyDEBUGIcon = { fg = c.fg_muted },
    NotifyDEBUGTitle = { fg = c.fg_muted },

    -- Yanky
    YankyPut = { bg = c.card_hover },
    YankyYanked = { bg = c.card_hover },
  }
end

return M
