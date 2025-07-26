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
	}

	syntax.Comment = { fg = blessed.base03, style = "italic" }
	syntax.Conditional = { fg = blessed.base0E, style = "bold" } -- normal if, then, else, endif, switch, etc.
	syntax.Keyword = { fg = blessed.base04, style = "bold" } -- normal for, do, while, etc.
	syntax.Repeat = { fg = blessed.base09, style = "bold" } -- normal any other keyword
	syntax.Function = { fg = blessed.base0D }
	syntax.Identifier = { fg = blessed.base0C } -- any variable name

	return syntax
end,

theme.loadPlugins = function()
	local plugins = {
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


	}
	-- Options:
	-- Disable nvim-tree background
	if vim.g.blessed_disable_background then
		plugins.NvimTreeNormal = { fg = blessed.base05, bg = blessed.none }
	else
		plugins.NvimTreeNormal = { fg = blessed.base05, bg = blessed.base02 }
	end

	if vim.g.blessed_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = blessed.base05, bg = blessed.base02 }
	else
		plugins.NvimTreeNormal = { fg = blessed.base05, bg = blessed.none }
	end

	return plugins
end

theme.loadEditor = function()
	local editor ={
		-- Number
		CursorLine = {},
		CursorLineNR = {},
		LineNr = { fg = blessed.base03 },

		-- Others
		VertSplit = { fg = blessed.base01, bg = nil },
		WinSeparator = { fg = blessed.base01, bg = nil },
		NormalFloat = { fg = nil, bg = blessed.base01 },
		FloatBorder = { fg = blessed.base01, bg = blessed.base01 },
	}
	--Set transparent background
	if vim.g.blessed_disable_background then
		editor.Normal = { fg = blessed.base05, bg = blessed.none } -- normal text and background color
		editor.SignColumn = { fg = blessed.base05, bg = blessed.none }
	else
		editor.Normal = { fg = blessed.base05, bg = blessed.base00 } -- normal text and background color
		editor.SignColumn = { fg = blessed.base05, bg = blessed.base00 }
	end

	-- Remove window split borders
	if vim.g.blessed_borders then
		editor.VertSplit = { fg = blessed.base02 }
	else
		editor.VertSplit = { fg = blessed.base00 }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = blessed.base00
	vim.g.terminal_color_1 = blessed.base01
	vim.g.terminal_color_2 = blessed.base02
	vim.g.terminal_color_3 = blessed.base03
	vim.g.terminal_color_4 = blessed.base04
	vim.g.terminal_color_5 = blessed.base05
	vim.g.terminal_color_6 = blessed.base06
	vim.g.terminal_color_7 = blessed.base07
	vim.g.terminal_color_8 = blessed.base08
	vim.g.terminal_color_9 = blessed.base09
	vim.g.terminal_color_10 = blessed.base0A
	vim.g.terminal_color_11 = blessed.base0B
	vim.g.terminal_color_12 = blessed.base0C
	vim.g.terminal_color_13 = blessed.base0D
	vim.g.terminal_color_14 = blessed.base0E
	vim.g.terminal_color_15 = blessed.base0F
end

return theme
