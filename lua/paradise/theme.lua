local c = require("paradise.colors")

-- Reset
vim.cmd("hi clear")
vim.opt.termguicolors = true
vim.g.colors_name = "paradise"

local function hl(group, fg, bg, opts)
	opts = opts or {}
	vim.api.nvim_set_hl(0, group, {
		fg = fg,
		bg = bg,
		bold = opts.bold,
		italic = opts.italic,
		underline = opts.underline,
		strikethrough = opts.strikethrough
	})
end

-- Editor
hl("Normal", c.white, c.bg)
hl("NormalNC", c.white, c.bg)
hl("CursorLine", nil, c.dark_gray)
hl("LineNr", c.mid_gray)
hl("CursorLineNr", c.white)
hl("VertSplit", c.dark_gray)
hl("WinSeparator", c.dark_gray)

-- Floating
hl("NormalFloat", c.white, c.dark_gray)
hl("FloatBorder", c.dark_gray, c.dark_gray)

-- Statusline
hl("StatusLine", c.white, c.gray)
hl("StatusLineNC", c.mid_gray, c.dark_gray)

-- Search
hl("Search", c.black, c.yellow)
hl("IncSearch", c.black, c.yellow)

-- Diagnostics
hl("DiagnosticError", c.red)
hl("DiagnosticWarn", c.yellow)
hl("DiagnosticInfo", c.blue)
hl("DiagnosticHint", c.cyan)

-- Status modes
hl("StatusReplace", c.red)
hl("StatusInsert", c.green)
hl("StatusCommand", c.yellow)
hl("StatusVisual", c.blue)
hl("StatusTerminal", c.purple)

-- NvimTree
hl("NvimTreeFolderName", c.white)
hl("NvimTreeOpenedFolderName", c.white)
hl("NvimTreeEmptyFolderName", c.white)
hl("NvimTreeFolderIcon", c.mid_gray)
hl("NvimTreeGitDirty", c.red)
hl("NvimTreeGitNew", c.green)
hl("NvimTreeGitDeleted", c.red)
hl("NvimTreeGitRenamed", c.yellow)
hl("NvimTreeGitExecFile", c.green)
hl("NvimTreeSpecialFile", c.purple)
hl("NvimTreeImageFile", c.cyan)
hl("NvimTreeWindowPicker", c.white, c.dark_gray)
hl("NvimTreeIndentMarker", c.mid_gray)
hl("NvimTreeWinSeparator", c.dark_gray)

-- Telescope
hl("TelescopePromptBorder", c.dark_gray, c.dark_gray)
hl("TelescopePromptNormal", nil, c.dark_gray)
hl("TelescopePromptPrefix", c.red, c.dark_gray)
hl("TelescopeSelection", nil, c.dark_gray)

-- GitSigns
hl("GitSignsAdd", c.green)
hl("GitSignsChange", c.mid_gray)
hl("GitSignsDelete", c.red)
hl("GitSignsChangedelete", c.red)
hl("GitSignsTopdelete", c.red)
hl("GitSignsUntracked", c.mid_gray)

-- Menu
hl("Pmenu", nil, c.dark_gray)
hl("PmenuSbar", nil, c.dark_gray)
hl("PmenuThumb", nil, c.dark_gray)
hl("PmenuSel", nil, c.gray)

-- CMP
hl("CmpItemAbbrMatch", c.white)
hl("CmpItemAbbrMatchFuzzy", c.white)
hl("CmpItemAbbr", c.mid_gray)
hl("CmpItemKind", c.purple)
hl("CmpItemMenu", c.purple)
hl("CmpItemKindSnippet", c.purple)

-- Extra
hl("StatusLine", nil, nil, { strikethrough = true })

-- Treesitter
hl("@comment", c.mid_gray, nil, { italic = true })

hl("@string", c.green)
hl("@string.escape", c.yellow)

hl("@number", c.yellow)
hl("@boolean", c.yellow)
hl("@float", c.yellow)

hl("@keyword", c.purple)
hl("@keyword.function", c.purple)
hl("@keyword.return", c.purple)

hl("@function", c.blue)
hl("@function.call", c.blue)
hl("@method", c.blue)
hl("@method.call", c.blue)

hl("@variable", c.white)
hl("@variable.builtin", c.red)

hl("@type", c.yellow)
hl("@type.builtin", c.yellow)

hl("@constant", c.yellow)
hl("@constant.builtin", c.yellow)

hl("@property", c.white)
hl("@field", c.white)

hl("@operator", c.purple)
hl("@punctuation.delimiter", c.white_dim)
hl("@punctuation.bracket", c.white_dim)

-- Diagnostics
hl("DiagnosticError", c.red)
hl("DiagnosticWarn", c.yellow)
hl("DiagnosticInfo", c.blue)
hl("DiagnosticHint", c.cyan)

hl("DiagnosticVirtualTextError", c.red)
hl("DiagnosticVirtualTextWarn", c.yellow)
hl("DiagnosticVirtualTextInfo", c.blue)
hl("DiagnosticVirtualTextHint", c.cyan)

hl("DiagnosticUnderlineError", nil, nil, { underline = true })
hl("DiagnosticUnderlineWarn", nil, nil, { underline = true })
hl("DiagnosticUnderlineInfo", nil, nil, { underline = true })
hl("DiagnosticUnderlineHint", nil, nil, { underline = true })

hl("DiagnosticSignError", c.red)
hl("DiagnosticSignWarn", c.yellow)
hl("DiagnosticSignInfo", c.blue)
hl("DiagnosticSignHint", c.cyan)

-- LSP semantic tokens
hl("@lsp.type.function", c.blue)
hl("@lsp.type.method", c.blue)
hl("@lsp.type.variable", c.white)
hl("@lsp.type.parameter", c.white_dim)
hl("@lsp.type.property", c.white)
hl("@lsp.type.keyword", c.purple)
hl("@lsp.type.type", c.yellow)
hl("@lsp.type.enum", c.yellow)
hl("@lsp.type.interface", c.yellow)
hl("@lsp.type.namespace", c.blue)

hl("@lsp.mod.readonly", c.white_dim)
hl("@lsp.mod.defaultLibrary", c.red)

