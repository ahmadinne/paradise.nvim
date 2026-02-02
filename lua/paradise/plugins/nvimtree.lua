local c = require("paradise.palette").colors
local hl = require("paradise.util").hl

hl("NvimTreeFolderName", { fg = c.base05 })
hl("NvimTreeOpenedFolderName", { fg = c.base05 })
hl("NvimTreeEmptyFolderName", { fg = c.base05 })

hl("NvimTreeFolderIcon", { fg = c.base03 })
hl("NvimTreeIndentMarker", { fg = c.base03 })

hl("NvimTreeGitDirty", { fg = c.base08 })
hl("NvimTreeGitNew", { fg = c.base0B })
hl("NvimTreeGitDeleted", { fg = c.base08 })
hl("NvimTreeGitRenamed", { fg = c.base0A })

hl("NvimTreeSpecialFile", { fg = c.base0E })
hl("NvimTreeImageFile", { fg = c.base0C })

hl("NvimTreeWinSeparator", { fg = c.base01 })
hl("NvimTreeWindowPicker", { fg = c.base05, bg = c.base01 })
