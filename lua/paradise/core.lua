local c = require("paradise.palette").colors
local hl = require("paradise.util").hl

-- Editor
hl("Normal", c.base05, c.base00)
hl("NormalNC", c.base05, c.base00)
hl("CursorLine", nil, c.base01)
hl("LineNr", c.base03)
hl("CursorLineNr", c.base05)
hl("VertSplit", c.base01)
hl("WinSeparator", c.base01)

-- Floating
hl("NormalFloat", c.base05, c.base01)
hl("FloatBorder", c.base01, c.base01)

-- Statusline
hl("StatusLine", c.base05, c.base02)
hl("StatusLineNC", c.base03, c.base01)

-- Search
hl("Search", c.base00, c.base09)
hl("IncSearch", c.base00, c.base0A)

-- Diagnostics
hl("DiagnosticError", c.base08)
hl("DiagnosticWarn", c.base0A)
hl("DiagnosticInfo", c.base0D)
hl("DiagnosticHint", c.base0C)

-- Status modes
hl("StatusReplace", c.base08)
hl("StatusInsert", c.base0B)
hl("StatusCommand", c.base0A)
hl("StatusVisual", c.base0D)
hl("StatusTerminal", c.base0E)

-- NvimTree
hl("NvimTreeFolderName", c.base05)
hl("NvimTreeOpenedFolderName", c.base05)
hl("NvimTreeEmptyFolderName", c.base05)
hl("NvimTreeFolderIcon", c.base03)
hl("NvimTreeGitDirty", c.base08)
hl("NvimTreeGitNew", c.base0B)
hl("NvimTreeGitDeleted", c.base08)
hl("NvimTreeGitRenamed", c.base0A)
hl("NvimTreeGitExecFile", c.base0B)
hl("NvimTreeSpecialFile", c.base0E)
hl("NvimTreeImageFile", c.base0C)
hl("NvimTreeWindowPicker", c.base05, c.base01)
hl("NvimTreeIndentMarker", c.base03)
hl("NvimTreeWinSeparator", c.base01)

-- Telescope
hl("TelescopePromptBorder", c.base01, c.base01)
hl("TelescopePromptNormal", nil, c.base01)
hl("TelescopePromptPrefix", c.base08, c.base01)
hl("TelescopeSelection", nil, c.base01)

-- GitSigns
hl("GitSignsAdd", c.base0B)
hl("GitSignsChange", c.base03)
hl("GitSignsDelete", c.base08)
hl("GitSignsChangedelete", c.base08)
hl("GitSignsTopdelete", c.base08)
hl("GitSignsUntracked", c.base03)

-- Menu
hl("Pmenu", nil, c.base01)
hl("PmenuSbar", nil, c.base01)
hl("PmenuThumb", nil, c.base01)
hl("PmenuSel", nil, c.base02)

-- CMP
hl("CmpItemAbbrMatch", c.base05)
hl("CmpItemAbbrMatchFuzzy", c.base05)
hl("CmpItemAbbr", c.base03)
hl("CmpItemKind", c.base0E)
hl("CmpItemMenu", c.base0E)
hl("CmpItemKindSnippet", c.base0E)

-- Extra
hl("StatusLine", nil, nil, { strikethrough = true })

-- Treesitter
hl("@comment", c.base03, nil, { italic = true })

hl("@string", c.base0B)
hl("@string.escape", c.base09)

hl("@number", c.base09)
hl("@boolean", c.base09)
hl("@float", c.base09)

hl("@keyword", c.base0E)
hl("@keyword.function", c.base0E)
hl("@keyword.return", c.base0E)

hl("@function", c.base0D)
hl("@function.call", c.base0D)
hl("@method", c.base0D)
hl("@method.call", c.base0D)

hl("@variable", c.base05)
hl("@variable.builtin", c.base08)

hl("@type", c.base0A)
hl("@type.builtin", c.base0A)

hl("@constant", c.base09)
hl("@constant.builtin", c.base09)

hl("@property", c.base05)
hl("@field", c.base05)

hl("@operator", c.base0E)
hl("@punctuation.delimiter", c.base04)
hl("@punctuation.bracket", c.base04)

-- Diagnostics
hl("DiagnosticError", c.base08)
hl("DiagnosticWarn", c.base0A)
hl("DiagnosticInfo", c.base0D)
hl("DiagnosticHint", c.base0C)

hl("DiagnosticVirtualTextError", c.base08)
hl("DiagnosticVirtualTextWarn", c.base0A)
hl("DiagnosticVirtualTextInfo", c.base0D)
hl("DiagnosticVirtualTextHint", c.base0C)

hl("DiagnosticUnderlineError", nil, nil, { underline = true })
hl("DiagnosticUnderlineWarn", nil, nil, { underline = true })
hl("DiagnosticUnderlineInfo", nil, nil, { underline = true })
hl("DiagnosticUnderlineHint", nil, nil, { underline = true })

-- LSP semantic tokens
hl("@lsp.type.function", c.base0D)
hl("@lsp.type.method", c.base0D)
hl("@lsp.type.variable", c.base05)
hl("@lsp.type.parameter", c.base04)
hl("@lsp.type.property", c.base05)
hl("@lsp.type.keyword", c.base0E)
hl("@lsp.type.type", c.base0A)
hl("@lsp.type.enum", c.base0A)
hl("@lsp.type.interface", c.base0A)
hl("@lsp.type.namespace", c.base0D)

hl("@lsp.mod.readonly", c.base04)
hl("@lsp.mod.defaultLibrary", c.base08)
