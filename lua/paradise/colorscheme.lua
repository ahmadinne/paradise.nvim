local base16 = require("base16-colorscheme")
local color = require("paradise.colors")
base16.setup(color)

-- Highlights
local function hl(highlight, fg, bg)
	if fg == nil then
		fg = "none"
	end
	if bg == nil then
		bg = "none"
	end
	vim.cmd("hi " .. highlight .. " guifg=" .. fg .. " guibg=" .. bg)
end

-- Status Line
hl("StatusNormal")
hl("StatusLineNC", color.base03)
hl("StatusActive", color.base05)
hl("StatusLine", color.base02) -- inactive
hl("StatusReplace", color.base08)
hl("StatusInsert", color.base0B)
hl("StatusCommand", color.base0A)
hl("StatusVisual", color.base0D)
hl("StatusTerminal", color.base0E)

-- Nvim Tree
hl("NvimTreeFolderName", color.base05)
hl("NvimTreeOpenedFolderName", color.base05)
hl("NvimTreeEmptyFolderName", color.base05)
hl("NvimTreeFolderIcon", color.base03)
hl("NvimTreeGitDirty", color.base08)
hl("NvimTreeGitNew", color.base0B)
hl("NvimTreeGitDeleted", color.base08)
hl("NvimTreeGitRenamed", color.base0A)
hl("NvimTreeGitExecFile", color.base0B)
hl("NvimTreeSpecialFile", color.base0E)
hl("NvimTreeImageFile", color.base0C)
hl("NvimTreeWindowPicker", color.base05, color.base01)
hl("NvimTreeIndentMarker", color.base03)
hl("NvimTreeWinSeparator", color.base01, nil)

-- Telescope
hl("TelescopePromptBorder", color.base01, color.base01)
hl("TelescopePromptNormal", nil, color.base01)
hl("TelescopePromptPrefix", color.base08, color.base01)
hl("TelescopeSelection", nil, color.base01)

hl("GitSignsAdd", color.base0B, nil)
hl("GitSignsChange", color.base03, nil)
hl("GitSignsDelete", color.base08, nil)
hl("GitSignsChangedelete", color.base08, nil)
hl("GitSignsTopdelete", color.base08, nil)
hl("GitSignsUntracked", color.base03, nil)

-- Menu
hl("Pmenu", nil, color.base01)
hl("PmenuSbar", nil, color.base01)
hl("PmenuThumb", nil, color.base01)
hl("PmenuSel", nil, color.base02)

-- CMP
hl("CmpItemAbbrMatch", color.base05)
hl("CmpItemAbbrMatchFuzzy", color.base05)
hl("CmpItemAbbr", color.base03)
hl("CmpItemKind", color.base0E)
hl("CmpItemMenu", color.base0E)
hl("CmpItemKindSnippet", color.base0E)

-- Number
hl("CursorLine")
hl("CursorLineNR")
hl("LineNr", color.base03)

-- Others
hl("VertSplit", color.base01, nil)
hl("WinSeparator", color.base01, nil)
hl("NormalFloat", nil, color.base01)
hl("FloatBorder", color.base01, color.base01)

-- Extra
vim.cmd("hi StatusLine gui=strikethrough")
