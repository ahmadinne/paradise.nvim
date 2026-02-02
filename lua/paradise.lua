local M = {}

local config = {
	override = {},
	transparent_background = false,
}

function M.setup(opts)
	opts = opts or {}
	config = vim.tbl_deep_extend('force', config, opts)
end

function M.colorscheme()
	if vim.g.colors_name then
		vim.cmd('hi clear')
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = 'paradise'

	require('paradise.theme')
end

return M
