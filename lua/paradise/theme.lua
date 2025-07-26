local paradise = require("paradise.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = paradise.paradise9_gui }, -- int, long, char, etc.
		StorageClass = { fg = paradise.paradise9_gui }, -- static, register, volatile, etc.
		Structure = { fg = paradise.paradise9_gui }, -- struct, union, enum, etc.
		Constant = { fg = paradise.paradise4_gui }, -- any constant
		String = { fg = paradise.paradise10_gui, bg = paradise.none, style = "italic" }, -- Any string
		Character = { fg = paradise.paradise10_gui }, -- any character constant: 'c', '\n'
		Number = { fg = paradise.paradise10_gui }, -- a number constant: 5
		Boolean = { fg = paradise.paradise11_gui }, -- a boolean constant: TRUE, false
		Float = { fg = paradise.paradise15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = paradise.paradise9_gui }, -- any statement
		Label = { fg = paradise.paradise9_gui }, -- case, default, etc.
		Operator = { fg = paradise.paradise8_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = paradise.paradise9_gui }, -- try, catch, throw
		PreProc = { fg = paradise.paradise9_gui }, -- generic Preprocessor
		Include = { fg = paradise.paradise9_gui }, -- preprocessor #include
		Define = { fg = paradise.paradise9_gui }, -- preprocessor #define
		Macro = { fg = paradise.paradise9_gui }, -- same as Define
		Typedef = { fg = paradise.paradise9_gui }, -- A typedef
		PreCondit = { fg = paradise.paradise13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = paradise.error }, -- any special symbol
		SpecialChar = { fg = paradise.paradise4_gui }, -- special character in a constant <C-J>
		Tag = { fg = paradise.paradise4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = paradise.paradise9_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = paradise.paradise8_gui }, -- special things inside a comment
		Debug = { fg = paradise.paradise11_gui }, -- debugging statements
		Underlined = { fg = paradise.link, bg = paradise.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = paradise.disabled }, -- left blank, hidden
		Error = { fg = paradise.error, bg = paradise.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = paradise.paradise13_gui, bg = paradise.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = paradise.none, bg = paradise.bg },

		htmlLink = { fg = paradise.link, style = "underline" },
		htmlH1 = { fg = paradise.paradise8_gui, style = "bold" },
		htmlH2 = { fg = paradise.paradise11_gui, style = "bold" },
		htmlH3 = { fg = paradise.paradise14_gui, style = "bold" },
		htmlH4 = { fg = paradise.paradise15_gui, style = "bold" },
		htmlH5 = { fg = paradise.paradise9_gui, style = "bold" },
		markdownH1 = { fg = paradise.paradise8_gui, style = "bold" },
		markdownH2 = { fg = paradise.paradise11_gui, style = "bold" },
		markdownH3 = { fg = paradise.paradise14_gui, style = "bold" },
		markdownH1Delimiter = { fg = paradise.paradise8_gui },
		markdownH2Delimiter = { fg = paradise.paradise11_gui },
		markdownH3Delimiter = { fg = paradise.paradise14_gui },
	}

	syntax.Comment = { fg = paradise.comments, style = "italic" }
	syntax.Conditional = { fg = paradise.paradise12_gui, style = "bold" } -- normal if, then, else, endif, switch, etc.
	syntax.Keyword = { fg = paradise.paradise12_gui, style = "bold" } -- normal for, do, while, etc.
	syntax.Repeat = { fg = paradise.paradise12_gui, style = "bold" } -- normal any other keyword
	syntax.Function = { fg = paradise.paradise8_gui }
	syntax.Identifier = { fg = paradise.error } -- any variable name

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = paradise.fg, bg = paradise.float }, -- normal text and background color
		ColorColumn = { fg = paradise.none, bg = paradise.paradise1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = paradise.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = paradise.paradise4_gui, bg = paradise.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = paradise.cursor, bg = paradise.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = paradise.paradise7_gui, bg = paradise.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = paradise.paradise14_gui, bg = paradise.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = paradise.paradise12_gui, bg = paradise.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = paradise.paradise11_gui, bg = paradise.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = paradise.paradise15_gui, bg = paradise.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = paradise.disabled },
		ErrorMsg = { fg = paradise.none },
		Folded = { fg = paradise.disabled, paradise.none, style = "italic" },
		FoldColumn = { fg = paradise.paradise7_gui },
		IncSearch = { fg = paradise.none, bg = paradise.paradise4_gui, style = "reverse" },
		LineNr = { fg = paradise.line_numbers },
		CursorLineNr = { fg = paradise.accent },
		MatchParen = { fg = paradise.paradise15_gui, bg = paradise.none, style = "bold" },
		ModeMsg = { fg = paradise.accent },
		MoreMsg = { fg = paradise.accent },
		NonText = { fg = paradise.disabled },
		Pmenu = { fg = paradise.text, bg = paradise.contrast },
		PmenuSel = { fg = paradise.accent, bg = paradise.active },
		PmenuSbar = { fg = paradise.text, bg = paradise.contrast },
		PmenuThumb = { fg = paradise.fg, bg = paradise.accent },
		Question = { fg = paradise.paradise14_gui },
		QuickFixLine = { fg = paradise.highlight, paradise.paradise6_gui, style = "reverse" },
		qfLineNr = { fg = paradise.highlight, paradise.paradise6_gui, style = "reverse" },
		Search = { fg = paradise.paradise1_gui, bg = paradise.paradise6_gui, style = "reverse" },
		SpecialKey = { fg = paradise.paradise9_gui },
		SpellBad = { fg = paradise.paradise11_gui, bg = paradise.none, style = "italic,undercurl" },
		SpellCap = { fg = paradise.paradise7_gui, bg = paradise.none, style = "italic,undercurl" },
		SpellLocal = { fg = paradise.paradise8_gui, bg = paradise.none, style = "italic,undercurl" },
		SpellRare = { fg = paradise.paradise9_gui, bg = paradise.none, style = "italic,undercurl" },
		StatusLine = { fg = paradise.fg, bg = paradise.contrast },
		StatusLineNC = { fg = paradise.fg, bg = paradise.border },
		StatusLineTerm = { fg = paradise.fg, bg = paradise.contrast },
		StatusLineTermNC = { fg = paradise.fg, bg = paradise.border },
		TabLineFill = { fg = paradise.fg },
		TablineSel = { fg = paradise.fg, bg = paradise.contrast },
		Tabline = { fg = paradise.comments, bg = paradise.bg_alt },
		Title = { fg = paradise.paradise14_gui, bg = paradise.none, style = "bold" },
		Visual = { fg = paradise.none, bg = paradise.selection },
		VisualNOS = { fg = paradise.none, bg = paradise.selection },
		WarningMsg = { fg = paradise.error },
		WildMenu = { fg = paradise.paradise12_gui, bg = paradise.none, style = "bold" },
		CursorColumn = { fg = paradise.none, bg = paradise.active },
		CursorLine = { fg = paradise.none, bg = paradise.cursorlinefg },
		ToolbarLine = { fg = paradise.fg, bg = paradise.bg_alt },
		ToolbarButton = { fg = paradise.fg, bg = paradise.none, style = "bold" },
		NormalMode = { fg = paradise.accent, bg = paradise.none, style = "reverse" },
		InsertMode = { fg = paradise.paradise14_gui, bg = paradise.none, style = "reverse" },
		ReplacelMode = { fg = paradise.paradise11_gui, bg = paradise.none, style = "reverse" },
		VisualMode = { fg = paradise.paradise9_gui, bg = paradise.none, style = "reverse" },
		CommandMode = { fg = paradise.paradise4_gui, bg = paradise.none, style = "reverse" },
		Warnings = { fg = paradise.paradise15_gui },

		healthError = { fg = paradise.error },
		healthSuccess = { fg = paradise.paradise14_gui },
		healthWarning = { fg = paradise.paradise15_gui },

		-- dashboard
		DashboardShortCut = { fg = paradise.paradise7_gui },
		DashboardHeader = { fg = paradise.paradise9_gui },
		DashboardCenter = { fg = paradise.paradise8_gui },
		DashboardFooter = { fg = paradise.paradise14_gui, style = "italic" },
	}

	-- Options:

	--Set transparent background
	if vim.g.paradise_disable_background then
		editor.Normal = { fg = paradise.fg, bg = paradise.none } -- normal text and background color
		editor.SignColumn = { fg = paradise.fg, bg = paradise.none }
	else
		editor.Normal = { fg = paradise.fg, bg = paradise.bg } -- normal text and background color
		editor.SignColumn = { fg = paradise.fg, bg = paradise.bg }
	end

	-- Remove window split borders
	if vim.g.paradise_borders then
		editor.VertSplit = { fg = paradise.border }
	else
		editor.VertSplit = { fg = paradise.bg }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = paradise.paradise0_gui
	vim.g.terminal_color_1 = paradise.error
	vim.g.terminal_color_2 = paradise.paradise11_gui
	vim.g.terminal_color_3 = paradise.paradise9_gui
	vim.g.terminal_color_4 = paradise.paradise4_gui
	vim.g.terminal_color_5 = paradise.paradise13_gui
	vim.g.terminal_color_6 = paradise.paradise12_gui
	vim.g.terminal_color_7 = paradise.paradise7_gui
	vim.g.terminal_color_8 = paradise.paradise3_gui
	vim.g.terminal_color_9 = paradise.error
	vim.g.terminal_color_10 = paradise.paradise11_gui
	vim.g.terminal_color_11 = paradise.paradise9_gui
	vim.g.terminal_color_12 = paradise.paradise4_gui
	vim.g.terminal_color_13 = paradise.paradise13_gui
	vim.g.terminal_color_14 = paradise.paradise12_gui
	vim.g.terminal_color_15 = paradise.paradise7_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = paradise.paradise12_gui }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSCharacter = { fg = paradise.paradise14_gui }, -- For characters.
		TSConstructor = { fg = paradise.paradise9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
		TSConstant = { fg = paradise.paradise13_gui }, -- For constants
		TSFloat = { fg = paradise.paradise15_gui }, -- For floats
		TSNumber = { fg = paradise.paradise15_gui }, -- For all number
		TSString = { fg = paradise.paradise14_gui }, -- For strings.

		TSAttribute = { fg = paradise.paradise15_gui }, -- (unstable) TODO: docs
		TSBoolean = { fg = paradise.paradise9_gui }, -- For booleans.
		TSConstBuiltin = { fg = paradise.paradise7_gui }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = paradise.paradise7_gui }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = paradise.error }, -- For syntax/parser errors.
		TSException = { fg = paradise.paradise15_gui }, -- For exception related keywords.
		TSField = { fg = paradise.paradise4_gui }, -- For fields.
		TSFuncMacro = { fg = paradise.paradise7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = paradise.paradise9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = paradise.paradise15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSNamespace = { fg = paradise.paradise4_gui }, -- For identifiers referring to modules and namespaces.
		TSOperator = { fg = paradise.paradise9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = paradise.paradise10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = paradise.paradise10_gui }, -- For references to parameters of a function.
		TSProperty = { fg = paradise.paradise10_gui }, -- Same as `TSField`.
		TSPunctDelimiter = { fg = paradise.paradise8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = paradise.paradise8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = paradise.paradise8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSStringRegex = { fg = paradise.paradise7_gui }, -- For regexes.
		TSStringEscape = { fg = paradise.disabled }, -- For escape characters within a string.
		TSSymbol = { fg = paradise.paradise15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = paradise.paradise9_gui }, -- For types.
		TSTypeBuiltin = { fg = paradise.paradise9_gui }, -- For builtin types.
		TSTag = { fg = paradise.paradise4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = paradise.paradise15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = paradise.text }, -- For strings consideparadise11_gui text in a markup language.
		TSTextReference = { fg = paradise.paradise15_gui }, -- FIXME
		TSEmphasis = { fg = paradise.paradise10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = paradise.fg, bg = paradise.none, style = "underline" }, -- For text to be represented with an underline.
		TSStrike = {}, -- For strikethrough text.
		TSTitle = { fg = paradise.paradise10_gui, bg = paradise.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = paradise.fg }, -- Literal text.
		TSURI = { fg = paradise.link }, -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = paradise.paradise11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	treesitter.TSComment = { fg = paradise.paradise3_gui }
	treesitter.TSConditional = { fg = paradise.paradise9_gui } -- For keywords related to conditionnals.
	treesitter.TSKeyword = { fg = paradise.paradise9_gui } -- For keywords that don't fall in previous categories.
	treesitter.TSRepeat = { fg = paradise.paradise9_gui } -- For keywords related to loops.
	treesitter.TSKeywordFunction = { fg = paradise.paradise8_gui }
	treesitter.TSFunction = { fg = paradise.paradise8_gui } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = paradise.paradise7_gui } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = paradise.paradise8_gui }
	treesitter.TSVariable = { fg = paradise.accent } -- Any variable name that does not have another highlight.
	treesitter.TSVariableBuiltin = { fg = paradise.accent }

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = paradise.error }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = paradise.error }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = paradise.error }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = paradise.error }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = paradise.error }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = paradise.paradise15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = paradise.paradise15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = paradise.paradise15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = paradise.paradise15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = paradise.paradise15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = paradise.paradise10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = paradise.paradise10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = paradise.paradise10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = paradise.paradise10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = paradise.paradise10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = paradise.paradise9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = paradise.paradise9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = paradise.paradise9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = paradise.paradise9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = paradise.paradise10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = paradise.accent, bg = paradise.highlight }, -- used for highlighting "text" references
		LspReferenceRead = { fg = paradise.accent, bg = paradise.highlight }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = paradise.accent, bg = paradise.highlight }, -- used for highlighting "write" references
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = paradise.text },
		LspTroubleCount = { fg = paradise.paradise9_gui, bg = paradise.active },
		LspTroubleNormal = { fg = paradise.fg, bg = paradise.sidebar },

		-- Diff
		diffAdded = { fg = paradise.paradise14_gui },
		diffRemoved = { fg = paradise.paradise11_gui },
		diffChanged = { fg = paradise.paradise15_gui },
		diffOldFile = { fg = paradise.yelow },
		diffNewFile = { fg = paradise.paradise12_gui },
		diffFile = { fg = paradise.paradise7_gui },
		diffLine = { fg = paradise.comments },
		diffIndexLine = { fg = paradise.paradise9_gui },

		-- Neogit
		NeogitBranch = { fg = paradise.paradise10_gui },
		NeogitRemote = { fg = paradise.paradise9_gui },
		NeogitHunkHeader = { fg = paradise.fg, bg = paradise.highlight },
		NeogitHunkHeaderHighlight = { fg = paradise.paradise7_gui, bg = paradise.contrast },
		NeogitDiffContextHighlight = { fg = paradise.bg_alt, bg = paradise.contrast },
		NeogitDiffDeleteHighlight = { fg = paradise.paradise11_gui },
		NeogitDiffAddHighlight = { fg = paradise.paradise14_gui },

		-- GitGutter
		GitGutterAdd = { fg = paradise.paradise14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = paradise.paradise15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = paradise.paradise11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = paradise.paradise14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = paradise.paradise14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = paradise.paradise14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = paradise.paradise15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = paradise.paradise15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = paradise.paradise15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = paradise.paradise11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = paradise.paradise11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = paradise.paradise11_gui }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = paradise.paradise8_gui },
		TelescopeResultsBorder = { fg = paradise.paradise9_gui },
		TelescopePreviewBorder = { fg = paradise.paradise14_gui },
		TelescopeSelectionCaret = { fg = paradise.paradise9_gui },
		TelescopeSelection = { fg = paradise.paradise9_gui },
		TelescopeMatching = { fg = paradise.paradise8_gui },
		TelescopeNormal = { fg = paradise.fg, bg = paradise.float },

		-- NvimTree
		NvimTreeRootFolder = { fg = paradise.paradise7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = paradise.paradise15_gui },
		NvimTreeGitNew = { fg = paradise.paradise14_gui },
		NvimTreeImageFile = { fg = paradise.paradise15_gui },
		NvimTreeExecFile = { fg = paradise.paradise14_gui },
		NvimTreeSpecialFile = { fg = paradise.paradise9_gui, style = "underline" },
		NvimTreeFolderName = { fg = paradise.paradise10_gui },
		NvimTreeEmptyFolderName = { fg = paradise.disabled },
		NvimTreeFolderIcon = { fg = paradise.accent },
		NvimTreeIndentMarker = { fg = paradise.disabled },
		LspDiagnosticsError = { fg = paradise.error },
		LspDiagnosticsWarning = { fg = paradise.paradise15_gui },
		LspDiagnosticsInformation = { fg = paradise.paradise10_gui },
		LspDiagnosticsHint = { fg = paradise.paradise9_gui },

		-- WhichKey
		WhichKey = { fg = paradise.accent, style = "bold" },
		WhichKeyGroup = { fg = paradise.text },
		WhichKeyDesc = { fg = paradise.paradise7_gui, style = "italic" },
		WhichKeySeperator = { fg = paradise.fg },
		WhichKeyFloating = { bg = paradise.float },
		WhichKeyFloat = { bg = paradise.float },

		-- LspSaga
		DiagnosticError = { fg = paradise.error },
		DiagnosticWarning = { fg = paradise.paradise15_gui },
		DiagnosticInformation = { fg = paradise.paradise10_gui },
		DiagnosticHint = { fg = paradise.paradise9_gui },
		DiagnosticTruncateLine = { fg = paradise.fg },
		LspFloatWinNormal = { bg = paradise.contrast },
		LspFloatWinBorder = { fg = paradise.paradise9_gui },
		LspSagaBorderTitle = { fg = paradise.paradise8_gui },
		LspSagaHoverBorder = { fg = paradise.paradise10_gui },
		LspSagaRenameBorder = { fg = paradise.paradise14_gui },
		LspSagaDefPreviewBorder = { fg = paradise.paradise14_gui },
		LspSagaCodeActionBorder = { fg = paradise.paradise7_gui },
		LspSagaFinderSelection = { fg = paradise.paradise14_gui },
		LspSagaCodeActionTitle = { fg = paradise.paradise10_gui },
		LspSagaCodeActionContent = { fg = paradise.paradise9_gui },
		LspSagaSignatureHelpBorder = { fg = paradise.paradise13_gui },
		ReferencesCount = { fg = paradise.paradise9_gui },
		DefinitionCount = { fg = paradise.paradise9_gui },
		DefinitionIcon = { fg = paradise.paradise7_gui },
		ReferencesIcon = { fg = paradise.paradise7_gui },
		TargetWord = { fg = paradise.paradise8_gui },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = paradise.bg },
		BufferLineFill = { bg = paradise.bg },

		-- Sneak
		Sneak = { fg = paradise.bg, bg = paradise.accent },
		SneakScope = { bg = paradise.selection },

		-- Indent Blankline
		IndentBlanklineChar = { fg = paradise.paradise3_gui },
		IndentBlanklineContextChar = { fg = paradise.paradise3_gui },

		-- Illuminate
		illuminatedWord = { bg = paradise.cursorlinefg },
		illuminatedCurWord = { bg = paradise.cursorlinefg },

		-- nvim-dap
		DapBreakpoint = { fg = paradise.paradise14_gui },
		DapStopped = { fg = paradise.paradise15_gui },

		-- Hop
		HopNextKey = { fg = paradise.accent, style = "bold" },
		HopNextKey1 = { fg = paradise.paradise8_gui, style = "bold" },
		HopNextKey2 = { fg = paradise.paradise3_gui },
		HopUnmatched = { fg = paradise.comments },

		-- Fern
		FernBranchText = { fg = paradise.paradise3_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.paradise_disable_background then
		plugins.NvimTreeNormal = { fg = paradise.fg, bg = paradise.none }
	else
		plugins.NvimTreeNormal = { fg = paradise.fg, bg = paradise.sidebar }
	end

	if vim.g.paradise_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = paradise.fg, bg = paradise.sidebar }
	else
		plugins.NvimTreeNormal = { fg = paradise.fg, bg = paradise.none }
	end

	return plugins
end

return theme
