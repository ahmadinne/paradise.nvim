local c = require("paradise.palette")
local hl = require("paradise.util").hl

hl("BlinkCmpMenu", { fg = c.base05, bg = c.base01 })
hl("BlinkCmpMenuBorder", { fg = c.base01, bg = c.base01 })
hl("BlinkCmpMenuSelection", { bg = c.base02 })

hl("BlinkCmpMatch", { fg = c.base05, bold = true })
hl("BlinkCmpMatchFuzzy", { fg = c.base05, underline = true })

hl("BlinkCmpKindFunction", { fg = c.base0D })
hl("BlinkCmpKindMethod", { fg = c.base0D })
hl("BlinkCmpKindVariable", { fg = c.base05 })
hl("BlinkCmpKindSnippet", { fg = c.base0B })
hl("BlinkCmpKindClass", { fg = c.base0A })
hl("BlinkCmpKindKeyword", { fg = c.base0E })

hl("BlinkCmpSourceLsp", { fg = c.base0D })
hl("BlinkCmpSourceSnippet", { fg = c.base0B })
hl("BlinkCmpSourceBuffer", { fg = c.base04 })

hl("BlinkCmpDoc", { fg = c.base05, bg = c.base01 })
hl("BlinkCmpDocBorder", { fg = c.base01, bg = c.base01 })

