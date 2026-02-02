local c = require("paradise.palette").colors
local hl = require("paradise.util").hl

hl("Normal", { fg = c.base05, bg = c.base00 })
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

hl("@comment", { fg = c.base03, italic = true })

hl("@string", { fg = c.base0B })
hl("@string.escape", { fg = c.base09 })

hl("@number", { fg = c.base09 })
hl("@boolean", { fg = c.base09 })

hl("@keyword", { fg = c.base0E })
hl("@keyword.return", { fg = c.base0E })

hl("@function", { fg = c.base0D })
hl("@method", { fg = c.base0D })

hl("@type", { fg = c.base0A })
hl("@type.builtin", { fg = c.base0A })

hl("@variable", { fg = c.base05 })
hl("@variable.builtin", { fg = c.base08 })

hl("@constant", { fg = c.base09 })
hl("@operator", { fg = c.base0E })

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
hl("@lsp.type.function", { fg = c.base0D })
hl("@lsp.type.method", { fg = c.base0D })
hl("@lsp.type.variable", { fg = c.base05 })
hl("@lsp.type.parameter", { fg = c.base04 })
hl("@lsp.type.keyword", { fg = c.base0E })
hl("@lsp.type.type", { fg = c.base0A })
hl("@lsp.type.namespace", { fg = c.base0C })
