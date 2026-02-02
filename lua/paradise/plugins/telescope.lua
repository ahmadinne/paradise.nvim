local c = require("paradise.palette").colors
local hl = require("paradise.util").hl

hl("TelescopeNormal", { fg = c.base05, bg = c.base00 })
hl("TelescopeBorder", { fg = c.base01, bg = c.base00 })

hl("TelescopePromptNormal", { fg = c.base05, bg = c.base01 })
hl("TelescopePromptBorder", { fg = c.base01, bg = c.base01 })
hl("TelescopePromptPrefix", { fg = c.base08 })

hl("TelescopeSelection", { bg = c.base01 })
hl("TelescopeSelectionCaret", { fg = c.base08 })
