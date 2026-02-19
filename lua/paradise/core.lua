local c = require("paradise.palette").colors
local hl = require("paradise.util").hl
local cfg = require("paradise.config")

hl("Normal", { fg = c.base05, bg = cfg.transparent and "NONE" or c.base00 })
hl("NormalNC", { fg = c.base05, bg = c.base00 })

hl("CursorLine", { bg = c.base01 })
hl("LineNr", { fg = c.base03 })
hl("CursorLineNr", { fg = c.base05 })

hl("VertSplit", { fg = c.base01 })
hl("WinSeparator", { fg = c.base01 })

hl("NormalFloat", { fg = c.base05, bg = c.base01 })
hl("FloatBorder", { fg = c.base01, bg = c.base01 })

hl("StatusLine", { fg = c.base05, bg = c.base02 })
hl("StatusLineNC", { fg = c.base03, bg = c.base01 })

hl("Error", { fg = c.base08 })
hl("ErrorMsg", { fg = c.base08 })
hl("WarningMsg", { fg = c.base08 })

hl("Hlargs", { fg = c.base08 })
hl("@lsp.type.parameter", { fg = c.base08 }) -- optional but closer

hl("DiffDelete", { fg = c.base08 })
hl("SpellBad", { fg = c.base08, underline = true })

hl("@comment", { fg = c.base03, italic = cfg.italic_comments })
hl("@comment.todo", { fg = c.base0A, bold = true })
hl("@comment.note", { fg = c.base0D })
hl("@comment.warning", { fg = c.base08 })

hl("@string", { fg = c.base0B })
hl("@string.escape", { fg = c.base09 })
hl("@string.special", { fg = c.base0C })
hl("@string.regex", { fg = c.base0C })
hl("@string.path", { fg = c.base0C })

hl("@number", { fg = c.base09 })
hl("@boolean", { fg = c.base09 })

hl("@keyword", { fg = c.base0E })
hl("@keyword.function", { fg = c.base0E })
hl("@keyword.return", { fg = c.base0E })
hl("@keyword.operator", { fg = c.base0E })
hl("@keyword.import", { fg = c.base0E })
hl("@keyword.repeat", { fg = c.base0E })
hl("@keyword.conditional", { fg = c.base0E })
hl("@keyword.exception", { fg = c.base08 })
hl("@keyword.builtin", { fg = c.base0E })

hl("@function", { fg = c.base0D })
hl("@function.call", { fg = c.base0D })
hl("@function.builtin", { fg = c.base08 })
hl("@function.method", { fg = c.base0D })
hl("@function.method.call", { fg = c.base0D })
hl("@function.method.builtin", { fg = c.base08 })
hl("@method", { fg = c.base0D })

hl("@constructor", { fg = c.base0A })
hl("@constructor.builtin", { fg = c.base08 })

hl("@type", { fg = c.base0A })
hl("@type.builtin", { fg = c.base0A })
hl("@type.definition", { fg = c.base0A })
hl("@type.qualifier", { fg = c.base0E })

hl("@variable", { fg = c.base05 })
hl("@variable.builtin", { fg = c.base08 })
hl("@variable.parameter", { fg = c.base08 })
hl("@variable.member", { fg = c.base05 })
hl("@variable.member.builtin", { fg = c.base08 })
hl("@lsp.mod.defaultLibrary", { fg = c.base08 })

hl("@constant", { fg = c.base09 })
hl("@constant.builtin", { fg = c.base08 })
hl("@constant.macro", { fg = c.base08 })
hl("@number", { fg = c.base09 })
hl("@float", { fg = c.base09 })
hl("@constant.macro.builtin", { fg = c.base08 })

hl("@operator", { fg = c.base0E })
hl("@operator.builtin", { fg = c.base0E })
hl("@punctuation.delimiter", { fg = c.base04 })
hl("@punctuation.bracket", { fg = c.base04 })
hl("@punctuation.special", { fg = c.base04 })

hl("@module", { fg = c.base0C })
hl("@module.builtin", { fg = c.base08 })
hl("@namespace", { fg = c.base0C })
hl("@namespace.builtin", { fg = c.base08 })

hl("@attribute", { fg = c.base0E })
hl("@attribute.builtin", { fg = c.base08 })

hl("@punctuation.delimiter", { fg = c.base04 })
hl("@punctuation.bracket", { fg = c.base04 })

hl("DiagnosticError", { fg = c.base08 })
hl("DiagnosticWarn", { fg = c.base0A })
hl("DiagnosticInfo", { fg = c.base0D })
hl("DiagnosticHint", { fg = c.base0C })

hl("DiagnosticVirtualTextError", { fg = c.base08 })
hl("DiagnosticVirtualTextWarn", { fg = c.base0A })
hl("DiagnosticVirtualTextInfo", { fg = c.base0D })
hl("DiagnosticVirtualTextHint", { fg = c.base0C })

-- semantic tokens
hl("@lsp.mod.readonly", { italic = true })
hl("@lsp.mod.builtin", { fg = c.base08 })
hl("@lsp.mod.defaultLibrary", { fg = c.base08 })
hl("@lsp.mod.readonly", { italic = true })
hl("@lsp.mod.static", { italic = true })
hl("@lsp.mod.deprecated", { strikethrough = true })
hl("@lsp.mod.globalScope", { fg = c.base08 })

hl("@lsp.type.keyword", { fg = c.base0E })
hl("@lsp.type.class", { fg = c.base0A })
hl("@lsp.type.decorator", { fg = c.base0E })
hl("@lsp.type.enum", { fg = c.base0A })
hl("@lsp.type.enumMember", { fg = c.base09 })
hl("@lsp.type.function", { fg = c.base0D })
hl("@lsp.type.interface", { fg = c.base0A })
hl("@lsp.type.macro", { fg = c.base08 })
hl("@lsp.type.method", { fg = c.base0D })
hl("@lsp.type.namespace", { fg = c.base0C })
hl("@lsp.type.parameter", { fg = c.base08 })
hl("@lsp.type.property", { fg = c.base05 })
hl("@lsp.type.struct", { fg = c.base0A })
hl("@lsp.type.type", { fg = c.base0A })
hl("@lsp.type.typeParameter", { fg = c.base0A })
hl("@lsp.type.variable", { fg = c.base05 })

-- text
hl("@text", { fg = c.base05 })
hl("@text.strong", { bold = true })
hl("@text.emphasis", { italic = true })
hl("@text.underline", { underline = true })
hl("@text.strike", { strikethrough = true })
hl("@text.title", { fg = c.base0D, bold = true })
hl("@text.literal", { fg = c.base0B })
hl("@text.uri", { fg = c.base0C, underline = true })

-- structure
hl("@property", { fg = c.base05 })
hl("@field", { fg = c.base05 })
hl("@parameter", { fg = c.base08 })
hl("@label", { fg = c.base0D })
hl("@tag", { fg = c.base0E })
hl("@tag.attribute", { fg = c.base0A })
hl("@attribute", { fg = c.base0E })
hl("@attribute.builtin", { fg = c.base08 })

-- UI semantic
hl("Title", { fg = c.base0D, bold = true })
hl("Directory", { fg = c.base0C })
hl("Identifier", { fg = c.base05 })
hl("Function", { fg = c.base0D })
hl("Type", { fg = c.base0A })
hl("Statement", { fg = c.base0E })
hl("PreProc", { fg = c.base0E })
hl("Special", { fg = c.base0C })
hl("Delimiter", { fg = c.base04 })
