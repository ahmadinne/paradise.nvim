local blessed = require("blessed.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = blessed.blessed9_gui }, -- int, long, char, etc.
		StorageClass = { fg = blessed.blessed9_gui }, -- static, register, volatile, etc.
		Structure = { fg = blessed.blessed9_gui }, -- struct, union, enum, etc.
		Constant = { fg = blessed.blessed4_gui }, -- any constant
		String = { fg = blessed.blessed10_gui, bg = blessed.none, style = "italic" }, -- Any string
		Character = { fg = blessed.blessed10_gui }, -- any character constant: 'c', '\n'
		Number = { fg = blessed.blessed10_gui }, -- a number constant: 5
		Boolean = { fg = blessed.blessed11_gui }, -- a boolean constant: TRUE, false
		Float = { fg = blessed.blessed15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = blessed.blessed9_gui }, -- any statement
		Label = { fg = blessed.blessed9_gui }, -- case, default, etc.
		Operator = { fg = blessed.blessed8_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = blessed.blessed9_gui }, -- try, catch, throw
		PreProc = { fg = blessed.blessed9_gui }, -- generic Preprocessor
		Include = { fg = blessed.blessed9_gui }, -- preprocessor #include
		Define = { fg = blessed.blessed9_gui }, -- preprocessor #define
		Macro = { fg = blessed.blessed9_gui }, -- same as Define
		Typedef = { fg = blessed.blessed9_gui }, -- A typedef
		PreCondit = { fg = blessed.blessed13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = blessed.error }, -- any special symbol
		SpecialChar = { fg = blessed.blessed4_gui }, -- special character in a constant <C-J>
		Tag = { fg = blessed.blessed4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = blessed.blessed9_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = blessed.blessed8_gui }, -- special things inside a comment
		Debug = { fg = blessed.blessed11_gui }, -- debugging statements
		Underlined = { fg = blessed.link, bg = blessed.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = blessed.disabled }, -- left blank, hidden
		Error = { fg = blessed.error, bg = blessed.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = blessed.blessed13_gui, bg = blessed.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = blessed.none, bg = blessed.bg },

		htmlLink = { fg = blessed.link, style = "underline" },
		htmlH1 = { fg = blessed.blessed8_gui, style = "bold" },
		htmlH2 = { fg = blessed.blessed11_gui, style = "bold" },
		htmlH3 = { fg = blessed.blessed14_gui, style = "bold" },
		htmlH4 = { fg = blessed.blessed15_gui, style = "bold" },
		htmlH5 = { fg = blessed.blessed9_gui, style = "bold" },
		markdownH1 = { fg = blessed.blessed8_gui, style = "bold" },
		markdownH2 = { fg = blessed.blessed11_gui, style = "bold" },
		markdownH3 = { fg = blessed.blessed14_gui, style = "bold" },
		markdownH1Delimiter = { fg = blessed.blessed8_gui },
		markdownH2Delimiter = { fg = blessed.blessed11_gui },
		markdownH3Delimiter = { fg = blessed.blessed14_gui },
	}

	syntax.Comment = { fg = blessed.comments, style = "italic" }
	syntax.Conditional = { fg = blessed.blessed12_gui, style = "bold" } -- normal if, then, else, endif, switch, etc.
	syntax.Keyword = { fg = blessed.blessed12_gui, style = "bold" } -- normal for, do, while, etc.
	syntax.Repeat = { fg = blessed.blessed12_gui, style = "bold" } -- normal any other keyword
	syntax.Function = { fg = blessed.blessed8_gui }
	syntax.Identifier = { fg = blessed.error } -- any variable name

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = blessed.fg, bg = blessed.float }, -- normal text and background color
		ColorColumn = { fg = blessed.none, bg = blessed.blessed1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = blessed.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = blessed.blessed4_gui, bg = blessed.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = blessed.cursor, bg = blessed.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = blessed.blessed7_gui, bg = blessed.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = blessed.blessed14_gui, bg = blessed.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = blessed.blessed12_gui, bg = blessed.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = blessed.blessed11_gui, bg = blessed.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = blessed.blessed15_gui, bg = blessed.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = blessed.disabled },
		ErrorMsg = { fg = blessed.none },
		Folded = { fg = blessed.disabled, blessed.none, style = "italic" },
		FoldColumn = { fg = blessed.blessed7_gui },
		IncSearch = { fg = blessed.none, bg = blessed.blessed4_gui, style = "reverse" },
		LineNr = { fg = blessed.line_numbers },
		CursorLineNr = { fg = blessed.accent },
		MatchParen = { fg = blessed.blessed15_gui, bg = blessed.none, style = "bold" },
		ModeMsg = { fg = blessed.accent },
		MoreMsg = { fg = blessed.accent },
		NonText = { fg = blessed.disabled },
		Pmenu = { fg = blessed.text, bg = blessed.contrast },
		PmenuSel = { fg = blessed.accent, bg = blessed.active },
		PmenuSbar = { fg = blessed.text, bg = blessed.contrast },
		PmenuThumb = { fg = blessed.fg, bg = blessed.accent },
		Question = { fg = blessed.blessed14_gui },
		QuickFixLine = { fg = blessed.highlight, blessed.blessed6_gui, style = "reverse" },
		qfLineNr = { fg = blessed.highlight, blessed.blessed6_gui, style = "reverse" },
		Search = { fg = blessed.blessed1_gui, bg = blessed.blessed6_gui, style = "reverse" },
		SpecialKey = { fg = blessed.blessed9_gui },
		SpellBad = { fg = blessed.blessed11_gui, bg = blessed.none, style = "italic,undercurl" },
		SpellCap = { fg = blessed.blessed7_gui, bg = blessed.none, style = "italic,undercurl" },
		SpellLocal = { fg = blessed.blessed8_gui, bg = blessed.none, style = "italic,undercurl" },
		SpellRare = { fg = blessed.blessed9_gui, bg = blessed.none, style = "italic,undercurl" },
		StatusLine = { fg = blessed.fg, bg = blessed.contrast },
		StatusLineNC = { fg = blessed.fg, bg = blessed.border },
		StatusLineTerm = { fg = blessed.fg, bg = blessed.contrast },
		StatusLineTermNC = { fg = blessed.fg, bg = blessed.border },
		TabLineFill = { fg = blessed.fg },
		TablineSel = { fg = blessed.fg, bg = blessed.contrast },
		Tabline = { fg = blessed.comments, bg = blessed.bg_alt },
		Title = { fg = blessed.blessed14_gui, bg = blessed.none, style = "bold" },
		Visual = { fg = blessed.none, bg = blessed.selection },
		VisualNOS = { fg = blessed.none, bg = blessed.selection },
		WarningMsg = { fg = blessed.error },
		WildMenu = { fg = blessed.blessed12_gui, bg = blessed.none, style = "bold" },
		CursorColumn = { fg = blessed.none, bg = blessed.active },
		CursorLine = { fg = blessed.none, bg = blessed.cursorlinefg },
		ToolbarLine = { fg = blessed.fg, bg = blessed.bg_alt },
		ToolbarButton = { fg = blessed.fg, bg = blessed.none, style = "bold" },
		NormalMode = { fg = blessed.accent, bg = blessed.none, style = "reverse" },
		InsertMode = { fg = blessed.blessed14_gui, bg = blessed.none, style = "reverse" },
		ReplacelMode = { fg = blessed.blessed11_gui, bg = blessed.none, style = "reverse" },
		VisualMode = { fg = blessed.blessed9_gui, bg = blessed.none, style = "reverse" },
		CommandMode = { fg = blessed.blessed4_gui, bg = blessed.none, style = "reverse" },
		Warnings = { fg = blessed.blessed15_gui },

		healthError = { fg = blessed.error },
		healthSuccess = { fg = blessed.blessed14_gui },
		healthWarning = { fg = blessed.blessed15_gui },

		-- dashboard
		DashboardShortCut = { fg = blessed.blessed7_gui },
		DashboardHeader = { fg = blessed.blessed9_gui },
		DashboardCenter = { fg = blessed.blessed8_gui },
		DashboardFooter = { fg = blessed.blessed14_gui, style = "italic" },
	}

	-- Options:

	--Set transparent background
	if vim.g.blessed_disable_background then
		editor.Normal = { fg = blessed.fg, bg = blessed.none } -- normal text and background color
		editor.SignColumn = { fg = blessed.fg, bg = blessed.none }
	else
		editor.Normal = { fg = blessed.fg, bg = blessed.bg } -- normal text and background color
		editor.SignColumn = { fg = blessed.fg, bg = blessed.bg }
	end

	-- Remove window split borders
	if vim.g.blessed_borders then
		editor.VertSplit = { fg = blessed.border }
	else
		editor.VertSplit = { fg = blessed.bg }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = blessed.blessed0_gui
	vim.g.terminal_color_1 = blessed.error
	vim.g.terminal_color_2 = blessed.blessed11_gui
	vim.g.terminal_color_3 = blessed.blessed9_gui
	vim.g.terminal_color_4 = blessed.blessed4_gui
	vim.g.terminal_color_5 = blessed.blessed13_gui
	vim.g.terminal_color_6 = blessed.blessed12_gui
	vim.g.terminal_color_7 = blessed.blessed7_gui
	vim.g.terminal_color_8 = blessed.blessed3_gui
	vim.g.terminal_color_9 = blessed.error
	vim.g.terminal_color_10 = blessed.blessed11_gui
	vim.g.terminal_color_11 = blessed.blessed9_gui
	vim.g.terminal_color_12 = blessed.blessed4_gui
	vim.g.terminal_color_13 = blessed.blessed13_gui
	vim.g.terminal_color_14 = blessed.blessed12_gui
	vim.g.terminal_color_15 = blessed.blessed7_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = blessed.blessed12_gui }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSCharacter = { fg = blessed.blessed14_gui }, -- For characters.
		TSConstructor = { fg = blessed.blessed9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
		TSConstant = { fg = blessed.blessed13_gui }, -- For constants
		TSFloat = { fg = blessed.blessed15_gui }, -- For floats
		TSNumber = { fg = blessed.blessed15_gui }, -- For all number
		TSString = { fg = blessed.blessed14_gui }, -- For strings.

		TSAttribute = { fg = blessed.blessed15_gui }, -- (unstable) TODO: docs
		TSBoolean = { fg = blessed.blessed9_gui }, -- For booleans.
		TSConstBuiltin = { fg = blessed.blessed7_gui }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = blessed.blessed7_gui }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = blessed.error }, -- For syntax/parser errors.
		TSException = { fg = blessed.blessed15_gui }, -- For exception related keywords.
		TSField = { fg = blessed.blessed4_gui }, -- For fields.
		TSFuncMacro = { fg = blessed.blessed7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = blessed.blessed9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = blessed.blessed15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSNamespace = { fg = blessed.blessed4_gui }, -- For identifiers referring to modules and namespaces.
		TSOperator = { fg = blessed.blessed9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = blessed.blessed10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = blessed.blessed10_gui }, -- For references to parameters of a function.
		TSProperty = { fg = blessed.blessed10_gui }, -- Same as `TSField`.
		TSPunctDelimiter = { fg = blessed.blessed8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = blessed.blessed8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = blessed.blessed8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSStringRegex = { fg = blessed.blessed7_gui }, -- For regexes.
		TSStringEscape = { fg = blessed.disabled }, -- For escape characters within a string.
		TSSymbol = { fg = blessed.blessed15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = blessed.blessed9_gui }, -- For types.
		TSTypeBuiltin = { fg = blessed.blessed9_gui }, -- For builtin types.
		TSTag = { fg = blessed.blessed4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = blessed.blessed15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = blessed.text }, -- For strings consideblessed11_gui text in a markup language.
		TSTextReference = { fg = blessed.blessed15_gui }, -- FIXME
		TSEmphasis = { fg = blessed.blessed10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = blessed.fg, bg = blessed.none, style = "underline" }, -- For text to be represented with an underline.
		TSStrike = {}, -- For strikethrough text.
		TSTitle = { fg = blessed.blessed10_gui, bg = blessed.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = blessed.fg }, -- Literal text.
		TSURI = { fg = blessed.link }, -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = blessed.blessed11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	treesitter.TSComment = { fg = blessed.blessed3_gui }
	treesitter.TSConditional = { fg = blessed.blessed9_gui } -- For keywords related to conditionnals.
	treesitter.TSKeyword = { fg = blessed.blessed9_gui } -- For keywords that don't fall in previous categories.
	treesitter.TSRepeat = { fg = blessed.blessed9_gui } -- For keywords related to loops.
	treesitter.TSKeywordFunction = { fg = blessed.blessed8_gui }
	treesitter.TSFunction = { fg = blessed.blessed8_gui } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = blessed.blessed7_gui } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = blessed.blessed8_gui }
	treesitter.TSVariable = { fg = blessed.accent } -- Any variable name that does not have another highlight.
	treesitter.TSVariableBuiltin = { fg = blessed.accent }

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = blessed.error }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = blessed.error }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = blessed.error }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = blessed.error }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = blessed.error }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = blessed.blessed15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = blessed.blessed15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = blessed.blessed15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = blessed.blessed15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = blessed.blessed15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = blessed.blessed10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = blessed.blessed10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = blessed.blessed10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = blessed.blessed10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = blessed.blessed10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = blessed.blessed9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = blessed.blessed9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = blessed.blessed9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = blessed.blessed9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = blessed.blessed10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = blessed.accent, bg = blessed.highlight }, -- used for highlighting "text" references
		LspReferenceRead = { fg = blessed.accent, bg = blessed.highlight }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = blessed.accent, bg = blessed.highlight }, -- used for highlighting "write" references
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = blessed.text },
		LspTroubleCount = { fg = blessed.blessed9_gui, bg = blessed.active },
		LspTroubleNormal = { fg = blessed.fg, bg = blessed.sidebar },

		-- Diff
		diffAdded = { fg = blessed.blessed14_gui },
		diffRemoved = { fg = blessed.blessed11_gui },
		diffChanged = { fg = blessed.blessed15_gui },
		diffOldFile = { fg = blessed.yelow },
		diffNewFile = { fg = blessed.blessed12_gui },
		diffFile = { fg = blessed.blessed7_gui },
		diffLine = { fg = blessed.comments },
		diffIndexLine = { fg = blessed.blessed9_gui },

		-- Neogit
		NeogitBranch = { fg = blessed.blessed10_gui },
		NeogitRemote = { fg = blessed.blessed9_gui },
		NeogitHunkHeader = { fg = blessed.fg, bg = blessed.highlight },
		NeogitHunkHeaderHighlight = { fg = blessed.blessed7_gui, bg = blessed.contrast },
		NeogitDiffContextHighlight = { fg = blessed.bg_alt, bg = blessed.contrast },
		NeogitDiffDeleteHighlight = { fg = blessed.blessed11_gui },
		NeogitDiffAddHighlight = { fg = blessed.blessed14_gui },

		-- GitGutter
		GitGutterAdd = { fg = blessed.blessed14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = blessed.blessed15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = blessed.blessed11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = blessed.blessed14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = blessed.blessed14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = blessed.blessed14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = blessed.blessed15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = blessed.blessed15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = blessed.blessed15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = blessed.blessed11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = blessed.blessed11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = blessed.blessed11_gui }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = blessed.blessed8_gui },
		TelescopeResultsBorder = { fg = blessed.blessed9_gui },
		TelescopePreviewBorder = { fg = blessed.blessed14_gui },
		TelescopeSelectionCaret = { fg = blessed.blessed9_gui },
		TelescopeSelection = { fg = blessed.blessed9_gui },
		TelescopeMatching = { fg = blessed.blessed8_gui },
		TelescopeNormal = { fg = blessed.fg, bg = blessed.float },

		-- NvimTree
		NvimTreeRootFolder = { fg = blessed.blessed7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = blessed.blessed15_gui },
		NvimTreeGitNew = { fg = blessed.blessed14_gui },
		NvimTreeImageFile = { fg = blessed.blessed15_gui },
		NvimTreeExecFile = { fg = blessed.blessed14_gui },
		NvimTreeSpecialFile = { fg = blessed.blessed9_gui, style = "underline" },
		NvimTreeFolderName = { fg = blessed.blessed10_gui },
		NvimTreeEmptyFolderName = { fg = blessed.disabled },
		NvimTreeFolderIcon = { fg = blessed.accent },
		NvimTreeIndentMarker = { fg = blessed.disabled },
		LspDiagnosticsError = { fg = blessed.error },
		LspDiagnosticsWarning = { fg = blessed.blessed15_gui },
		LspDiagnosticsInformation = { fg = blessed.blessed10_gui },
		LspDiagnosticsHint = { fg = blessed.blessed9_gui },

		-- WhichKey
		WhichKey = { fg = blessed.accent, style = "bold" },
		WhichKeyGroup = { fg = blessed.text },
		WhichKeyDesc = { fg = blessed.blessed7_gui, style = "italic" },
		WhichKeySeperator = { fg = blessed.fg },
		WhichKeyFloating = { bg = blessed.float },
		WhichKeyFloat = { bg = blessed.float },

		-- LspSaga
		DiagnosticError = { fg = blessed.error },
		DiagnosticWarning = { fg = blessed.blessed15_gui },
		DiagnosticInformation = { fg = blessed.blessed10_gui },
		DiagnosticHint = { fg = blessed.blessed9_gui },
		DiagnosticTruncateLine = { fg = blessed.fg },
		LspFloatWinNormal = { bg = blessed.contrast },
		LspFloatWinBorder = { fg = blessed.blessed9_gui },
		LspSagaBorderTitle = { fg = blessed.blessed8_gui },
		LspSagaHoverBorder = { fg = blessed.blessed10_gui },
		LspSagaRenameBorder = { fg = blessed.blessed14_gui },
		LspSagaDefPreviewBorder = { fg = blessed.blessed14_gui },
		LspSagaCodeActionBorder = { fg = blessed.blessed7_gui },
		LspSagaFinderSelection = { fg = blessed.blessed14_gui },
		LspSagaCodeActionTitle = { fg = blessed.blessed10_gui },
		LspSagaCodeActionContent = { fg = blessed.blessed9_gui },
		LspSagaSignatureHelpBorder = { fg = blessed.blessed13_gui },
		ReferencesCount = { fg = blessed.blessed9_gui },
		DefinitionCount = { fg = blessed.blessed9_gui },
		DefinitionIcon = { fg = blessed.blessed7_gui },
		ReferencesIcon = { fg = blessed.blessed7_gui },
		TargetWord = { fg = blessed.blessed8_gui },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = blessed.bg },
		BufferLineFill = { bg = blessed.bg },

		-- Sneak
		Sneak = { fg = blessed.bg, bg = blessed.accent },
		SneakScope = { bg = blessed.selection },

		-- Indent Blankline
		IndentBlanklineChar = { fg = blessed.blessed3_gui },
		IndentBlanklineContextChar = { fg = blessed.blessed3_gui },

		-- Illuminate
		illuminatedWord = { bg = blessed.cursorlinefg },
		illuminatedCurWord = { bg = blessed.cursorlinefg },

		-- nvim-dap
		DapBreakpoint = { fg = blessed.blessed14_gui },
		DapStopped = { fg = blessed.blessed15_gui },

		-- Hop
		HopNextKey = { fg = blessed.accent, style = "bold" },
		HopNextKey1 = { fg = blessed.blessed8_gui, style = "bold" },
		HopNextKey2 = { fg = blessed.blessed3_gui },
		HopUnmatched = { fg = blessed.comments },

		-- Fern
		FernBranchText = { fg = blessed.blessed3_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.blessed_disable_background then
		plugins.NvimTreeNormal = { fg = blessed.fg, bg = blessed.none }
	else
		plugins.NvimTreeNormal = { fg = blessed.fg, bg = blessed.sidebar }
	end

	if vim.g.blessed_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = blessed.fg, bg = blessed.sidebar }
	else
		plugins.NvimTreeNormal = { fg = blessed.fg, bg = blessed.none }
	end

	return plugins
end

return theme
