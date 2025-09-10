local base16 = require("base16-colorscheme")
local c = require("pd.c")
base16.setup(c)

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
hl("StatusLineNC", c.base03)
hl("StatusActive", c.base05)
hl("StatusLine", c.base02) -- inactive
hl("StatusReplace", c.base08)
hl("StatusInsert", c.base0B)
hl("StatusCommand", c.base0A)
hl("StatusVisual", c.base0D)
hl("StatusTerminal", c.base0E)

-- Nvim Tree
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
hl("NvimTreeWinSeparator", c.base01, nil)

-- Telescope
hl("TelescopePromptBorder", c.base01, c.base01)
hl("TelescopePromptNormal", nil, c.base01)
hl("TelescopePromptPrefix", c.base08, c.base01)
hl("TelescopeSelection", nil, c.base01)

hl("GitSignsAdd", c.base0B, nil)
hl("GitSignsChange", c.base03, nil)
hl("GitSignsDelete", c.base08, nil)
hl("GitSignsChangedelete", c.base08, nil)
hl("GitSignsTopdelete", c.base08, nil)
hl("GitSignsUntracked", c.base03, nil)

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

-- Number
hl("CursorLine")
hl("CursorLineNR")
hl("LineNr", c.base03)

-- Others
hl("VertSplit", c.base01, nil)
hl("WinSeparator", c.base01, nil)
hl("NormalFloat", nil, c.base01)
hl("FloatBorder", c.base01, c.base01)

-- Extra
-- vim.cmd("hi StatusLine gui=strikethrough")
