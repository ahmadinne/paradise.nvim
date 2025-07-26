local blessed = require("blessed.colors")

local theme = {}

theme.loadSyntax = function()
	local syntax = {
		StatusNormal = {},
		StatusLineNC = { fg = blessed.base03 },
		StatusActive = { fg = blessed.base05 },
		StatusLine = { fg = blessed.base02 },
		StatusReplace = { fg = blessed.base08 },
		StatusInsert = { fg = blessed.base0B },
		StatusCommand = { fg = blessed.base0A },
		StatusVisual = { fg = blessed.base0D },
		StatusTerminal = { fg = blessed.base0E },

		-- Nvim Tree
		NvimTreeFolderName = { fg = blessed.base05 },
		NvimTreeOpenedFolderName = { fg = blessed.base05 },
		NvimTreeEmptyFolderName = { fg = blessed.base05 },
		NvimTreeFolderIcon = { fg = blessed.base03 },
		NvimTreeGitDirty = { fg = blessed.base08 },
		NvimTreeGitNew = { fg = blessed.base0B },
		NvimTreeGitDeleted = { fg = blessed.base08 },
		NvimTreeGitRenamed = { fg = blessed.base0A },
		NvimTreeGitExecFile = { fg = blessed.base0B },
		NvimTreeSpecialFile = { fg = blessed.base0E },
		NvimTreeImageFile = { fg = blessed.base0C },
		NvimTreeWindowPicker = { fg = blessed.base05, bg = blessed.base01 },
		NvimTreeIndentMarker = { fg = blessed.base03 },
		NvimTreeWinSeparator = { fg = blessed.base01, bg = nil },

		-- Telescope
		TelescopePromptBorder = { fg = blessed.base01, bg = blessed.base01 },
		TelescopePromptNormal = { fg = nil, blessed.base01 },
		TelescopePromptPrefix = { fg = blessed.base08, bg = blessed.base01 },
		TelescopeSelection = { fg = nil, blessed.base01 },

		GitSignsAdd = { fg = blessed.base0B, bg = nil },
		GitSignsChange = { fg = blessed.base03, bg = nil },
		GitSignsDelete = { fg = blessed.base08, bg = nil },
		GitSignsChangedelete = { fg = blessed.base08, bg = nil },
		GitSignsTopdelete = { fg = blessed.base08, bg = nil },
		GitSignsUntracked = { fg = blessed.base03, bg = nil },

		-- Menu
		Pmenu = { fg = nil, bg = blessed.base01 },
		PmenuSbar = { fg = nil, bg = blessed.base01 },
		PmenuThumb = { fg = nil, bg = blessed.base01 },
		PmenuSel = { fg = nil, bg = blessed.base02 },

		-- CMP
		CmpItemAbbrMatch = { fg = blessed.base05 },
		CmpItemAbbrMatchFuzzy = { fg = blessed.base05 },
		CmpItemAbbr = { fg = blessed.base03 },
		CmpItemKind = { fg = blessed.base0E },
		CmpItemMenu = { fg = blessed.base0E },
		CmpItemKindSnippet = { fg = blessed.base0E },

		-- Number
		CursorLine = {},
		CursorLineNR = {},
		LineNr = { fg = blessed.base03 },

		-- Others
		VertSplit = { fg = blessed.base01, nil },
		WinSeparator = { fg = blessed.base01, nil },
		NormalFloat = { fg = nil, blessed.base01 },
		FloatBorder = { fg = blessed.base01, blessed.base01 },
	}
end

return theme
