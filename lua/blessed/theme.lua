local blessed = require("blessed.colors")

-- Highlights
local function hl(highlight, fg, bg)
	if fg == nil then
		fg = "none"
	end
	if bg == nil then
		bg = "none"
	end
	cmd("hi " .. highlight .. " guifg=" .. fg .. " guibg=" .. bg)
end

-- Status Line
hl("StatusNormal")
hl("StatusLineNC", blessed.base03)
hl("StatusActive", blessed.base05)
hl("StatusLine", blessed.base02) -- inactive
hl("StatusReplace", blessed.base08)
hl("StatusInsert", blessed.base0B)
hl("StatusCommand", blessed.base0A)
hl("StatusVisual", blessed.base0D)
hl("StatusTerminal", blessed.base0E)

-- Nvim Tree
hl("NvimTreeFolderName", blessed.base05)
hl("NvimTreeOpenedFolderName", blessed.base05)
hl("NvimTreeEmptyFolderName", blessed.base05)
hl("NvimTreeFolderIcon", blessed.base03)
hl("NvimTreeGitDirty", blessed.base08)
hl("NvimTreeGitNew", blessed.base0B)
hl("NvimTreeGitDeleted", blessed.base08)
hl("NvimTreeGitRenamed", blessed.base0A)
hl("NvimTreeGitExecFile", blessed.base0B)
hl("NvimTreeSpecialFile", blessed.base0E)
hl("NvimTreeImageFile", blessed.base0C)
hl("NvimTreeWindowPicker", blessed.base05, blessed.base01)
hl("NvimTreeIndentMarker", blessed.base03)
hl("NvimTreeWinSeparator", blessed.base01, nil)

-- Telescope
hl("TelescopePromptBorder", blessed.base01, blessed.base01)
hl("TelescopePromptNormal", nil, blessed.base01)
hl("TelescopePromptPrefix", blessed.base08, blessed.base01)
hl("TelescopeSelection", nil, blessed.base01)

hl("GitSignsAdd", blessed.base0B, nil)
hl("GitSignsChange", blessed.base03, nil)
hl("GitSignsDelete", blessed.base08, nil)
hl("GitSignsChangedelete", blessed.base08, nil)
hl("GitSignsTopdelete", blessed.base08, nil)
hl("GitSignsUntracked", blessed.base03, nil)

-- Menu
hl("Pmenu", nil, blessed.base01)
hl("PmenuSbar", nil, blessed.base01)
hl("PmenuThumb", nil, blessed.base01)
hl("PmenuSel", nil, blessed.base02)

-- CMP
hl("CmpItemAbbrMatch", blessed.base05)
hl("CmpItemAbbrMatchFuzzy", blessed.base05)
hl("CmpItemAbbr", blessed.base03)
hl("CmpItemKind", blessed.base0E)
hl("CmpItemMenu", blessed.base0E)
hl("CmpItemKindSnippet", blessed.base0E)

-- Number
hl("CursorLine")
hl("CursorLineNR")
hl("LineNr", blessed.base03)

-- Others
hl("VertSplit", blessed.base01, nil)
hl("WinSeparator", blessed.base01, nil)
hl("NormalFloat", nil, blessed.base01)
hl("FloatBorder", blessed.base01, blessed.base01)

-- Extra
cmd("hi StatusLine gui=strikethrough")
