local paradise = require("paradise.colors")

-- Highlights
local function hl(group, color)
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local run = "highlight " .. group .. " " .. fg .. " " .. bg
	vim.cmd(run)
end

-- Status Line
hl("StatusNormal")
hl("StatusLineNC", paradise.base03)
hl("StatusActive", paradise.base05)
hl("StatusLine", paradise.base02) -- inactive
hl("StatusReplace", paradise.base08)
hl("StatusInsert", paradise.base0B)
hl("StatusCommand", paradise.base0A)
hl("StatusVisual", paradise.base0D)
hl("StatusTerminal", paradise.base0E)

-- Nvim Tree
hl("NvimTreeFolderName", paradise.base05)
hl("NvimTreeOpenedFolderName", paradise.base05)
hl("NvimTreeEmptyFolderName", paradise.base05)
hl("NvimTreeFolderIcon", paradise.base03)
hl("NvimTreeGitDirty", paradise.base08)
hl("NvimTreeGitNew", paradise.base0B)
hl("NvimTreeGitDeleted", paradise.base08)
hl("NvimTreeGitRenamed", paradise.base0A)
hl("NvimTreeGitExecFile", paradise.base0B)
hl("NvimTreeSpecialFile", paradise.base0E)
hl("NvimTreeImageFile", paradise.base0C)
hl("NvimTreeWindowPicker", paradise.base05, paradise.base01)
hl("NvimTreeIndentMarker", paradise.base03)
hl("NvimTreeWinSeparator", paradise.base01, nil)

-- Telescope
hl("TelescopePromptBorder", paradise.base01, paradise.base01)
hl("TelescopePromptNormal", nil, paradise.base01)
hl("TelescopePromptPrefix", paradise.base08, paradise.base01)
hl("TelescopeSelection", nil, paradise.base01)

hl("GitSignsAdd", paradise.base0B, nil)
hl("GitSignsChange", paradise.base03, nil)
hl("GitSignsDelete", paradise.base08, nil)
hl("GitSignsChangedelete", paradise.base08, nil)
hl("GitSignsTopdelete", paradise.base08, nil)
hl("GitSignsUntracked", paradise.base03, nil)

-- Menu
hl("Pmenu", nil, paradise.base01)
hl("PmenuSbar", nil, paradise.base01)
hl("PmenuThumb", nil, paradise.base01)
hl("PmenuSel", nil, paradise.base02)

-- CMP
hl("CmpItemAbbrMatch", paradise.base05)
hl("CmpItemAbbrMatchFuzzy", paradise.base05)
hl("CmpItemAbbr", paradise.base03)
hl("CmpItemKind", paradise.base0E)
hl("CmpItemMenu", paradise.base0E)
hl("CmpItemKindSnippet", paradise.base0E)

-- Number
hl("CursorLine")
hl("CursorLineNR")
hl("LineNr", paradise.base03)

-- Others
hl("VertSplit", paradise.base01, nil)
hl("WinSeparator", paradise.base01, nil)
hl("NormalFloat", nil, paradise.base01)
hl("FloatBorder", paradise.base01, paradise.base01)

-- Extra
cmd("hi StatusLine gui=strikethrough")
