local config = require 'paradise.config'
local theme = {}

function theme.colorscheme()
	if vim.version().minor < 8 then
		vim.notify(
			"Neovim 0.8+ is required to use paradise colorscheme.",
			vim.log.levels.ERROR,
			{ title = 'Min theme' }
		)
		return
	end

	vim.api.nvim_command 'hi_clear'
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "paradise"
end

function theme.setup(values)
	setmetatable(
		config,
		{ __index = vim.tbl_extend('force', config.defaults, values) }
	)
end

return theme
